# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\pico\pico-sdk\tools\elf2uf2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\pico\snake_game\build\elf2uf2

# Include any dependencies generated for this target.
include CMakeFiles\elf2uf2.dir\depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles\elf2uf2.dir\compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles\elf2uf2.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\elf2uf2.dir\flags.make

CMakeFiles\elf2uf2.dir\main.cpp.obj: CMakeFiles\elf2uf2.dir\flags.make
CMakeFiles\elf2uf2.dir\main.cpp.obj: C:\pico\pico-sdk\tools\elf2uf2\main.cpp
CMakeFiles\elf2uf2.dir\main.cpp.obj: CMakeFiles\elf2uf2.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\pico\snake_game\build\elf2uf2\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/elf2uf2.dir/main.cpp.obj"
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\elf2uf2.dir\main.cpp.obj.d --working-dir=C:\pico\snake_game\build\elf2uf2 --filter-prefix="Note: including file: " -- C:\PROGRA~2\MICROS~4\2019\BUILDT~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /showIncludes /FoCMakeFiles\elf2uf2.dir\main.cpp.obj /FdCMakeFiles\elf2uf2.dir\ /FS -c C:\pico\pico-sdk\tools\elf2uf2\main.cpp
<<

CMakeFiles\elf2uf2.dir\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/elf2uf2.dir/main.cpp.i"
	C:\PROGRA~2\MICROS~4\2019\BUILDT~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe > CMakeFiles\elf2uf2.dir\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\pico\pico-sdk\tools\elf2uf2\main.cpp
<<

CMakeFiles\elf2uf2.dir\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/elf2uf2.dir/main.cpp.s"
	C:\PROGRA~2\MICROS~4\2019\BUILDT~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\elf2uf2.dir\main.cpp.s /c C:\pico\pico-sdk\tools\elf2uf2\main.cpp
<<

# Object files for target elf2uf2
elf2uf2_OBJECTS = \
"CMakeFiles\elf2uf2.dir\main.cpp.obj"

# External object files for target elf2uf2
elf2uf2_EXTERNAL_OBJECTS =

elf2uf2.exe: CMakeFiles\elf2uf2.dir\main.cpp.obj
elf2uf2.exe: CMakeFiles\elf2uf2.dir\build.make
elf2uf2.exe: CMakeFiles\elf2uf2.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\pico\snake_game\build\elf2uf2\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable elf2uf2.exe"
	"C:\Program Files\CMake\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\elf2uf2.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\mt.exe --manifests -- C:\PROGRA~2\MICROS~4\2019\BUILDT~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\elf2uf2.dir\objects1.rsp @<<
 /out:elf2uf2.exe /implib:elf2uf2.lib /pdb:C:\pico\snake_game\build\elf2uf2\elf2uf2.pdb /version:0.0 /machine:X86 /debug /INCREMENTAL /subsystem:console  kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\elf2uf2.dir\build: elf2uf2.exe
.PHONY : CMakeFiles\elf2uf2.dir\build

CMakeFiles\elf2uf2.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\elf2uf2.dir\cmake_clean.cmake
.PHONY : CMakeFiles\elf2uf2.dir\clean

CMakeFiles\elf2uf2.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\pico\pico-sdk\tools\elf2uf2 C:\pico\pico-sdk\tools\elf2uf2 C:\pico\snake_game\build\elf2uf2 C:\pico\snake_game\build\elf2uf2 C:\pico\snake_game\build\elf2uf2\CMakeFiles\elf2uf2.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\elf2uf2.dir\depend

