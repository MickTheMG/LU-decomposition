# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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
CMAKE_COMMAND = /opt/homebrew/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/am-hkong/Documents/coding/Uni/C++/Forth_Semestr/LU

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/am-hkong/Documents/coding/Uni/C++/Forth_Semestr/LU/build

# Include any dependencies generated for this target.
include CMakeFiles/lu_solver.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/lu_solver.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/lu_solver.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lu_solver.dir/flags.make

CMakeFiles/lu_solver.dir/codegen:
.PHONY : CMakeFiles/lu_solver.dir/codegen

CMakeFiles/lu_solver.dir/src/main.cpp.o: CMakeFiles/lu_solver.dir/flags.make
CMakeFiles/lu_solver.dir/src/main.cpp.o: /Users/am-hkong/Documents/coding/Uni/C++/Forth_Semestr/LU/src/main.cpp
CMakeFiles/lu_solver.dir/src/main.cpp.o: CMakeFiles/lu_solver.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/am-hkong/Documents/coding/Uni/C++/Forth_Semestr/LU/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/lu_solver.dir/src/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lu_solver.dir/src/main.cpp.o -MF CMakeFiles/lu_solver.dir/src/main.cpp.o.d -o CMakeFiles/lu_solver.dir/src/main.cpp.o -c /Users/am-hkong/Documents/coding/Uni/C++/Forth_Semestr/LU/src/main.cpp

CMakeFiles/lu_solver.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/lu_solver.dir/src/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/am-hkong/Documents/coding/Uni/C++/Forth_Semestr/LU/src/main.cpp > CMakeFiles/lu_solver.dir/src/main.cpp.i

CMakeFiles/lu_solver.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/lu_solver.dir/src/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/am-hkong/Documents/coding/Uni/C++/Forth_Semestr/LU/src/main.cpp -o CMakeFiles/lu_solver.dir/src/main.cpp.s

CMakeFiles/lu_solver.dir/src/matrix.cpp.o: CMakeFiles/lu_solver.dir/flags.make
CMakeFiles/lu_solver.dir/src/matrix.cpp.o: /Users/am-hkong/Documents/coding/Uni/C++/Forth_Semestr/LU/src/matrix.cpp
CMakeFiles/lu_solver.dir/src/matrix.cpp.o: CMakeFiles/lu_solver.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/am-hkong/Documents/coding/Uni/C++/Forth_Semestr/LU/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/lu_solver.dir/src/matrix.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lu_solver.dir/src/matrix.cpp.o -MF CMakeFiles/lu_solver.dir/src/matrix.cpp.o.d -o CMakeFiles/lu_solver.dir/src/matrix.cpp.o -c /Users/am-hkong/Documents/coding/Uni/C++/Forth_Semestr/LU/src/matrix.cpp

CMakeFiles/lu_solver.dir/src/matrix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/lu_solver.dir/src/matrix.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/am-hkong/Documents/coding/Uni/C++/Forth_Semestr/LU/src/matrix.cpp > CMakeFiles/lu_solver.dir/src/matrix.cpp.i

CMakeFiles/lu_solver.dir/src/matrix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/lu_solver.dir/src/matrix.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/am-hkong/Documents/coding/Uni/C++/Forth_Semestr/LU/src/matrix.cpp -o CMakeFiles/lu_solver.dir/src/matrix.cpp.s

CMakeFiles/lu_solver.dir/src/vector.cpp.o: CMakeFiles/lu_solver.dir/flags.make
CMakeFiles/lu_solver.dir/src/vector.cpp.o: /Users/am-hkong/Documents/coding/Uni/C++/Forth_Semestr/LU/src/vector.cpp
CMakeFiles/lu_solver.dir/src/vector.cpp.o: CMakeFiles/lu_solver.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/am-hkong/Documents/coding/Uni/C++/Forth_Semestr/LU/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/lu_solver.dir/src/vector.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lu_solver.dir/src/vector.cpp.o -MF CMakeFiles/lu_solver.dir/src/vector.cpp.o.d -o CMakeFiles/lu_solver.dir/src/vector.cpp.o -c /Users/am-hkong/Documents/coding/Uni/C++/Forth_Semestr/LU/src/vector.cpp

CMakeFiles/lu_solver.dir/src/vector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/lu_solver.dir/src/vector.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/am-hkong/Documents/coding/Uni/C++/Forth_Semestr/LU/src/vector.cpp > CMakeFiles/lu_solver.dir/src/vector.cpp.i

CMakeFiles/lu_solver.dir/src/vector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/lu_solver.dir/src/vector.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/am-hkong/Documents/coding/Uni/C++/Forth_Semestr/LU/src/vector.cpp -o CMakeFiles/lu_solver.dir/src/vector.cpp.s

CMakeFiles/lu_solver.dir/src/lu_solver.cpp.o: CMakeFiles/lu_solver.dir/flags.make
CMakeFiles/lu_solver.dir/src/lu_solver.cpp.o: /Users/am-hkong/Documents/coding/Uni/C++/Forth_Semestr/LU/src/lu_solver.cpp
CMakeFiles/lu_solver.dir/src/lu_solver.cpp.o: CMakeFiles/lu_solver.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/am-hkong/Documents/coding/Uni/C++/Forth_Semestr/LU/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/lu_solver.dir/src/lu_solver.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lu_solver.dir/src/lu_solver.cpp.o -MF CMakeFiles/lu_solver.dir/src/lu_solver.cpp.o.d -o CMakeFiles/lu_solver.dir/src/lu_solver.cpp.o -c /Users/am-hkong/Documents/coding/Uni/C++/Forth_Semestr/LU/src/lu_solver.cpp

CMakeFiles/lu_solver.dir/src/lu_solver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/lu_solver.dir/src/lu_solver.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/am-hkong/Documents/coding/Uni/C++/Forth_Semestr/LU/src/lu_solver.cpp > CMakeFiles/lu_solver.dir/src/lu_solver.cpp.i

CMakeFiles/lu_solver.dir/src/lu_solver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/lu_solver.dir/src/lu_solver.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/am-hkong/Documents/coding/Uni/C++/Forth_Semestr/LU/src/lu_solver.cpp -o CMakeFiles/lu_solver.dir/src/lu_solver.cpp.s

# Object files for target lu_solver
lu_solver_OBJECTS = \
"CMakeFiles/lu_solver.dir/src/main.cpp.o" \
"CMakeFiles/lu_solver.dir/src/matrix.cpp.o" \
"CMakeFiles/lu_solver.dir/src/vector.cpp.o" \
"CMakeFiles/lu_solver.dir/src/lu_solver.cpp.o"

# External object files for target lu_solver
lu_solver_EXTERNAL_OBJECTS =

lu_solver: CMakeFiles/lu_solver.dir/src/main.cpp.o
lu_solver: CMakeFiles/lu_solver.dir/src/matrix.cpp.o
lu_solver: CMakeFiles/lu_solver.dir/src/vector.cpp.o
lu_solver: CMakeFiles/lu_solver.dir/src/lu_solver.cpp.o
lu_solver: CMakeFiles/lu_solver.dir/build.make
lu_solver: CMakeFiles/lu_solver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/am-hkong/Documents/coding/Uni/C++/Forth_Semestr/LU/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable lu_solver"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lu_solver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lu_solver.dir/build: lu_solver
.PHONY : CMakeFiles/lu_solver.dir/build

CMakeFiles/lu_solver.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lu_solver.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lu_solver.dir/clean

CMakeFiles/lu_solver.dir/depend:
	cd /Users/am-hkong/Documents/coding/Uni/C++/Forth_Semestr/LU/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/am-hkong/Documents/coding/Uni/C++/Forth_Semestr/LU /Users/am-hkong/Documents/coding/Uni/C++/Forth_Semestr/LU /Users/am-hkong/Documents/coding/Uni/C++/Forth_Semestr/LU/build /Users/am-hkong/Documents/coding/Uni/C++/Forth_Semestr/LU/build /Users/am-hkong/Documents/coding/Uni/C++/Forth_Semestr/LU/build/CMakeFiles/lu_solver.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/lu_solver.dir/depend

