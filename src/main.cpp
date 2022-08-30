#include "main.h"

using namespace pico_ssd1306;
struct Node
{
    int x,y;
    struct Node* next;
};

void snake_init_pos(struct Node* head)
{
   // struct Node* temp=new Node;
    struct Node* last_node=new Node;
   // temp=head;
    for(int i=40;i>=25;i--)
    {
        head->x=i;
        head->y=30;
        last_node=head;
        head->next=new Node;
        head=head->next;
    }
    last_node->next=NULL;
    delete head;
}
void insert_head(struct Node** h,uint8_t x,uint8_t y)
{
    struct Node* new_head=new Node;
    new_head->x=x;
    new_head->y=y;
    new_head->next=*h;
    *h=new_head;
}

void delete_tail(struct Node* h)
{
    struct Node* last_node=new Node;
    while(h->next!=NULL)
    {
        last_node=h;
        h=h->next;
    }
    last_node->next=NULL;
    delete h;
}

void increase_length(struct Node* h)
{
    struct Node* last_node=new Node;
    struct Node* new_node=new Node;
    while(h!=NULL)
    {
        last_node=h;
        h=h->next;
    }
    new_node->x=last_node->x;
    new_node->y=last_node->y;
    last_node->next=new_node;
    new_node->next=NULL;
}

bool body_bite(struct Node* h)
{
    int head_x=h->x;
    int head_y=h->y;
    h=h->next;
    while(h!=NULL)
    {
        if(h->x==head_x && h->y==head_y)
        {
            return 1;
        }
        h=h->next;
    }
    return 0;
}
void position_display(struct Node* h,SSD1306 disp)
{
    while(h!=NULL)
    {
        disp.setPixel(h->x,h->y);
        h=h->next;
    }
}

int main()
{
    struct Node* start=new Node;
    snake_init_pos(start);
    stdio_init_all();
    gpio_init(LEFT_BUTTON);
    gpio_init(RIGHT_BUTTON);
    gpio_init(UP_BUTTON);
    gpio_init(DOWN_BUTTON);
    gpio_set_dir(LEFT_BUTTON,false);
    gpio_set_dir(RIGHT_BUTTON,false);
    gpio_set_dir(UP_BUTTON,false);
    gpio_set_dir(DOWN_BUTTON,false);
    i2c_init(i2c1,400000);
    gpio_set_function(2,GPIO_FUNC_I2C);
    gpio_set_function(3,GPIO_FUNC_I2C);
    gpio_pull_up(2);
    gpio_pull_up(3);

    sleep_ms(250);
    SSD1306 display = SSD1306(i2c1, 0x3C, Size::W128xH64);
    display.setOrientation(0);
    uint8_t x=41,y=31,delay_time=100;
    int points=-1;
    bool left=0,right=1,up=0,down=0,bait_caught=true;
    uint32_t bait_x,bait_y;
    while(1)
    {
    display.clear();
    if(bait_caught==true)
    {
        //display.clear();
        bait_x=time_us_32()%120;
        drawText(&display, font_12x16, "GOTCHA", 0 ,0);
         //display.setPixel(50,50);
        bait_y=time_us_32()%60;
         bait_caught=false;
         display.sendBuffer();
         sleep_ms(500);
         points+=1;
         delay_time-=1;
         increase_length(start);
         continue;
    }
     char disp_point[]="POINTS: ";
     char point_char[5];
     sprintf(point_char,"%d",points);
    strcat(disp_point,point_char);
    drawText(&display,font_5x8,disp_point,0,50);
    drawRect(&display,bait_x,bait_y,bait_x+4,bait_y+4);
    position_display(start,display);

   /* Node* tmp= new Node;
    tmp=start;
        while(tmp!=NULL)
        {
            display.setPixel(tmp->x,tmp->y);
            tmp=tmp->next;
        }*/
        if(((start->x)>=bait_x && (start->x)<=bait_x+4) && (((start->y)>=bait_y) && (start->y)<=bait_y+4))
        {
           bait_caught=true;
           continue;
        }
        display.sendBuffer();

        if(gpio_get(LEFT_BUTTON) && right==0)
        {
            left=1;
            up=0;
            down=0;
            right=0;
        }
        if(gpio_get(RIGHT_BUTTON) && left==0)
        {
            left=0;
            up=0;
            down=0;
            right=1;
        }
        if(gpio_get(UP_BUTTON) && down==0)
        {
            left=0;
            up=1;
            down=0;
            right=0;   
        }
        if(gpio_get(DOWN_BUTTON) && up==0)
        {
            left=0;
            up=0;
            down=1;
            right=0;   
        }
        x+=left;
        x-=right;
        y+=down;
        y-=up;

        if(x<0)
        x=128-x;
        if(y<0)
        y=64-y;
        x=x%128;
        y=y%64;
        //pos_display(start);
        insert_head(&start,x,y);
        delete_tail(start);
        if(body_bite(start))
        {
            display.clear();
            drawText(&display, font_12x16, "GAME OVER", 0 ,20);
            display.sendBuffer();
            sleep_ms(100);
            break;
        }
        sleep_ms(delay_time);
    }
    return 0;
}