# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/media/sf_Ubuntu/C++ Game Emulator"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/media/sf_Ubuntu/C++ Game Emulator/build"

# Include any dependencies generated for this target.
include CMakeFiles/retro_console.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/retro_console.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/retro_console.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/retro_console.dir/flags.make

CMakeFiles/retro_console.dir/src/main.cpp.o: CMakeFiles/retro_console.dir/flags.make
CMakeFiles/retro_console.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/retro_console.dir/src/main.cpp.o: CMakeFiles/retro_console.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/media/sf_Ubuntu/C++ Game Emulator/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/retro_console.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/retro_console.dir/src/main.cpp.o -MF CMakeFiles/retro_console.dir/src/main.cpp.o.d -o CMakeFiles/retro_console.dir/src/main.cpp.o -c "/media/sf_Ubuntu/C++ Game Emulator/src/main.cpp"

CMakeFiles/retro_console.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/retro_console.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/media/sf_Ubuntu/C++ Game Emulator/src/main.cpp" > CMakeFiles/retro_console.dir/src/main.cpp.i

CMakeFiles/retro_console.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/retro_console.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/media/sf_Ubuntu/C++ Game Emulator/src/main.cpp" -o CMakeFiles/retro_console.dir/src/main.cpp.s

CMakeFiles/retro_console.dir/src/ui.cpp.o: CMakeFiles/retro_console.dir/flags.make
CMakeFiles/retro_console.dir/src/ui.cpp.o: ../src/ui.cpp
CMakeFiles/retro_console.dir/src/ui.cpp.o: CMakeFiles/retro_console.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/media/sf_Ubuntu/C++ Game Emulator/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/retro_console.dir/src/ui.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/retro_console.dir/src/ui.cpp.o -MF CMakeFiles/retro_console.dir/src/ui.cpp.o.d -o CMakeFiles/retro_console.dir/src/ui.cpp.o -c "/media/sf_Ubuntu/C++ Game Emulator/src/ui.cpp"

CMakeFiles/retro_console.dir/src/ui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/retro_console.dir/src/ui.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/media/sf_Ubuntu/C++ Game Emulator/src/ui.cpp" > CMakeFiles/retro_console.dir/src/ui.cpp.i

CMakeFiles/retro_console.dir/src/ui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/retro_console.dir/src/ui.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/media/sf_Ubuntu/C++ Game Emulator/src/ui.cpp" -o CMakeFiles/retro_console.dir/src/ui.cpp.s

CMakeFiles/retro_console.dir/src/emulator_launcher.cpp.o: CMakeFiles/retro_console.dir/flags.make
CMakeFiles/retro_console.dir/src/emulator_launcher.cpp.o: ../src/emulator_launcher.cpp
CMakeFiles/retro_console.dir/src/emulator_launcher.cpp.o: CMakeFiles/retro_console.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/media/sf_Ubuntu/C++ Game Emulator/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/retro_console.dir/src/emulator_launcher.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/retro_console.dir/src/emulator_launcher.cpp.o -MF CMakeFiles/retro_console.dir/src/emulator_launcher.cpp.o.d -o CMakeFiles/retro_console.dir/src/emulator_launcher.cpp.o -c "/media/sf_Ubuntu/C++ Game Emulator/src/emulator_launcher.cpp"

CMakeFiles/retro_console.dir/src/emulator_launcher.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/retro_console.dir/src/emulator_launcher.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/media/sf_Ubuntu/C++ Game Emulator/src/emulator_launcher.cpp" > CMakeFiles/retro_console.dir/src/emulator_launcher.cpp.i

CMakeFiles/retro_console.dir/src/emulator_launcher.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/retro_console.dir/src/emulator_launcher.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/media/sf_Ubuntu/C++ Game Emulator/src/emulator_launcher.cpp" -o CMakeFiles/retro_console.dir/src/emulator_launcher.cpp.s

# Object files for target retro_console
retro_console_OBJECTS = \
"CMakeFiles/retro_console.dir/src/main.cpp.o" \
"CMakeFiles/retro_console.dir/src/ui.cpp.o" \
"CMakeFiles/retro_console.dir/src/emulator_launcher.cpp.o"

# External object files for target retro_console
retro_console_EXTERNAL_OBJECTS =

retro_console: CMakeFiles/retro_console.dir/src/main.cpp.o
retro_console: CMakeFiles/retro_console.dir/src/ui.cpp.o
retro_console: CMakeFiles/retro_console.dir/src/emulator_launcher.cpp.o
retro_console: CMakeFiles/retro_console.dir/build.make
retro_console: CMakeFiles/retro_console.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/media/sf_Ubuntu/C++ Game Emulator/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable retro_console"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/retro_console.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/retro_console.dir/build: retro_console
.PHONY : CMakeFiles/retro_console.dir/build

CMakeFiles/retro_console.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/retro_console.dir/cmake_clean.cmake
.PHONY : CMakeFiles/retro_console.dir/clean

CMakeFiles/retro_console.dir/depend:
	cd "/media/sf_Ubuntu/C++ Game Emulator/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/media/sf_Ubuntu/C++ Game Emulator" "/media/sf_Ubuntu/C++ Game Emulator" "/media/sf_Ubuntu/C++ Game Emulator/build" "/media/sf_Ubuntu/C++ Game Emulator/build" "/media/sf_Ubuntu/C++ Game Emulator/build/CMakeFiles/retro_console.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/retro_console.dir/depend

