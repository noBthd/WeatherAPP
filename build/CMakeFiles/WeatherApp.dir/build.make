# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.30.4/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.30.4/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/egorkirichenko/Projects/C++/WeatherAPP

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/egorkirichenko/Projects/C++/WeatherAPP/build

# Include any dependencies generated for this target.
include CMakeFiles/WeatherApp.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/WeatherApp.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/WeatherApp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/WeatherApp.dir/flags.make

.qt/rcc/qrc_qml_resources.cpp: /Users/egorkirichenko/Projects/C++/WeatherAPP/ui/weather.qrc
.qt/rcc/qrc_qml_resources.cpp: /Users/egorkirichenko/Projects/C++/WeatherAPP/ui/components/main.qml
.qt/rcc/qrc_qml_resources.cpp: /Users/egorkirichenko/Projects/C++/WeatherAPP/ui/fonts/SaarSPDemo.otf
.qt/rcc/qrc_qml_resources.cpp: .qt/rcc/qml_resources.qrc
.qt/rcc/qrc_qml_resources.cpp: /opt/homebrew/share/qt/libexec/rcc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/egorkirichenko/Projects/C++/WeatherAPP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running rcc for resource qml_resources"
	/opt/homebrew/share/qt/libexec/rcc --output /Users/egorkirichenko/Projects/C++/WeatherAPP/build/.qt/rcc/qrc_qml_resources.cpp --name qml_resources /Users/egorkirichenko/Projects/C++/WeatherAPP/build/.qt/rcc/qml_resources.qrc

CMakeFiles/WeatherApp.dir/src/main.cpp.o: CMakeFiles/WeatherApp.dir/flags.make
CMakeFiles/WeatherApp.dir/src/main.cpp.o: /Users/egorkirichenko/Projects/C++/WeatherAPP/src/main.cpp
CMakeFiles/WeatherApp.dir/src/main.cpp.o: CMakeFiles/WeatherApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/egorkirichenko/Projects/C++/WeatherAPP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/WeatherApp.dir/src/main.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/WeatherApp.dir/src/main.cpp.o -MF CMakeFiles/WeatherApp.dir/src/main.cpp.o.d -o CMakeFiles/WeatherApp.dir/src/main.cpp.o -c /Users/egorkirichenko/Projects/C++/WeatherAPP/src/main.cpp

CMakeFiles/WeatherApp.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/WeatherApp.dir/src/main.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/egorkirichenko/Projects/C++/WeatherAPP/src/main.cpp > CMakeFiles/WeatherApp.dir/src/main.cpp.i

CMakeFiles/WeatherApp.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/WeatherApp.dir/src/main.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/egorkirichenko/Projects/C++/WeatherAPP/src/main.cpp -o CMakeFiles/WeatherApp.dir/src/main.cpp.s

CMakeFiles/WeatherApp.dir/src/WeatherAPI.cpp.o: CMakeFiles/WeatherApp.dir/flags.make
CMakeFiles/WeatherApp.dir/src/WeatherAPI.cpp.o: /Users/egorkirichenko/Projects/C++/WeatherAPP/src/WeatherAPI.cpp
CMakeFiles/WeatherApp.dir/src/WeatherAPI.cpp.o: CMakeFiles/WeatherApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/egorkirichenko/Projects/C++/WeatherAPP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/WeatherApp.dir/src/WeatherAPI.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/WeatherApp.dir/src/WeatherAPI.cpp.o -MF CMakeFiles/WeatherApp.dir/src/WeatherAPI.cpp.o.d -o CMakeFiles/WeatherApp.dir/src/WeatherAPI.cpp.o -c /Users/egorkirichenko/Projects/C++/WeatherAPP/src/WeatherAPI.cpp

CMakeFiles/WeatherApp.dir/src/WeatherAPI.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/WeatherApp.dir/src/WeatherAPI.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/egorkirichenko/Projects/C++/WeatherAPP/src/WeatherAPI.cpp > CMakeFiles/WeatherApp.dir/src/WeatherAPI.cpp.i

CMakeFiles/WeatherApp.dir/src/WeatherAPI.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/WeatherApp.dir/src/WeatherAPI.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/egorkirichenko/Projects/C++/WeatherAPP/src/WeatherAPI.cpp -o CMakeFiles/WeatherApp.dir/src/WeatherAPI.cpp.s

CMakeFiles/WeatherApp.dir/src/JSONUtils.cpp.o: CMakeFiles/WeatherApp.dir/flags.make
CMakeFiles/WeatherApp.dir/src/JSONUtils.cpp.o: /Users/egorkirichenko/Projects/C++/WeatherAPP/src/JSONUtils.cpp
CMakeFiles/WeatherApp.dir/src/JSONUtils.cpp.o: CMakeFiles/WeatherApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/egorkirichenko/Projects/C++/WeatherAPP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/WeatherApp.dir/src/JSONUtils.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/WeatherApp.dir/src/JSONUtils.cpp.o -MF CMakeFiles/WeatherApp.dir/src/JSONUtils.cpp.o.d -o CMakeFiles/WeatherApp.dir/src/JSONUtils.cpp.o -c /Users/egorkirichenko/Projects/C++/WeatherAPP/src/JSONUtils.cpp

CMakeFiles/WeatherApp.dir/src/JSONUtils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/WeatherApp.dir/src/JSONUtils.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/egorkirichenko/Projects/C++/WeatherAPP/src/JSONUtils.cpp > CMakeFiles/WeatherApp.dir/src/JSONUtils.cpp.i

CMakeFiles/WeatherApp.dir/src/JSONUtils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/WeatherApp.dir/src/JSONUtils.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/egorkirichenko/Projects/C++/WeatherAPP/src/JSONUtils.cpp -o CMakeFiles/WeatherApp.dir/src/JSONUtils.cpp.s

CMakeFiles/WeatherApp.dir/src/App.cpp.o: CMakeFiles/WeatherApp.dir/flags.make
CMakeFiles/WeatherApp.dir/src/App.cpp.o: /Users/egorkirichenko/Projects/C++/WeatherAPP/src/App.cpp
CMakeFiles/WeatherApp.dir/src/App.cpp.o: CMakeFiles/WeatherApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/egorkirichenko/Projects/C++/WeatherAPP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/WeatherApp.dir/src/App.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/WeatherApp.dir/src/App.cpp.o -MF CMakeFiles/WeatherApp.dir/src/App.cpp.o.d -o CMakeFiles/WeatherApp.dir/src/App.cpp.o -c /Users/egorkirichenko/Projects/C++/WeatherAPP/src/App.cpp

CMakeFiles/WeatherApp.dir/src/App.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/WeatherApp.dir/src/App.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/egorkirichenko/Projects/C++/WeatherAPP/src/App.cpp > CMakeFiles/WeatherApp.dir/src/App.cpp.i

CMakeFiles/WeatherApp.dir/src/App.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/WeatherApp.dir/src/App.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/egorkirichenko/Projects/C++/WeatherAPP/src/App.cpp -o CMakeFiles/WeatherApp.dir/src/App.cpp.s

CMakeFiles/WeatherApp.dir/src/window.cpp.o: CMakeFiles/WeatherApp.dir/flags.make
CMakeFiles/WeatherApp.dir/src/window.cpp.o: /Users/egorkirichenko/Projects/C++/WeatherAPP/src/window.cpp
CMakeFiles/WeatherApp.dir/src/window.cpp.o: CMakeFiles/WeatherApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/egorkirichenko/Projects/C++/WeatherAPP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/WeatherApp.dir/src/window.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/WeatherApp.dir/src/window.cpp.o -MF CMakeFiles/WeatherApp.dir/src/window.cpp.o.d -o CMakeFiles/WeatherApp.dir/src/window.cpp.o -c /Users/egorkirichenko/Projects/C++/WeatherAPP/src/window.cpp

CMakeFiles/WeatherApp.dir/src/window.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/WeatherApp.dir/src/window.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/egorkirichenko/Projects/C++/WeatherAPP/src/window.cpp > CMakeFiles/WeatherApp.dir/src/window.cpp.i

CMakeFiles/WeatherApp.dir/src/window.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/WeatherApp.dir/src/window.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/egorkirichenko/Projects/C++/WeatherAPP/src/window.cpp -o CMakeFiles/WeatherApp.dir/src/window.cpp.s

CMakeFiles/WeatherApp.dir/build/.qt/rcc/qrc_qml_resources.cpp.o: CMakeFiles/WeatherApp.dir/flags.make
CMakeFiles/WeatherApp.dir/build/.qt/rcc/qrc_qml_resources.cpp.o: .qt/rcc/qrc_qml_resources.cpp
CMakeFiles/WeatherApp.dir/build/.qt/rcc/qrc_qml_resources.cpp.o: CMakeFiles/WeatherApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/egorkirichenko/Projects/C++/WeatherAPP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/WeatherApp.dir/build/.qt/rcc/qrc_qml_resources.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/WeatherApp.dir/build/.qt/rcc/qrc_qml_resources.cpp.o -MF CMakeFiles/WeatherApp.dir/build/.qt/rcc/qrc_qml_resources.cpp.o.d -o CMakeFiles/WeatherApp.dir/build/.qt/rcc/qrc_qml_resources.cpp.o -c /Users/egorkirichenko/Projects/C++/WeatherAPP/build/.qt/rcc/qrc_qml_resources.cpp

CMakeFiles/WeatherApp.dir/build/.qt/rcc/qrc_qml_resources.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/WeatherApp.dir/build/.qt/rcc/qrc_qml_resources.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/egorkirichenko/Projects/C++/WeatherAPP/build/.qt/rcc/qrc_qml_resources.cpp > CMakeFiles/WeatherApp.dir/build/.qt/rcc/qrc_qml_resources.cpp.i

CMakeFiles/WeatherApp.dir/build/.qt/rcc/qrc_qml_resources.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/WeatherApp.dir/build/.qt/rcc/qrc_qml_resources.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/egorkirichenko/Projects/C++/WeatherAPP/build/.qt/rcc/qrc_qml_resources.cpp -o CMakeFiles/WeatherApp.dir/build/.qt/rcc/qrc_qml_resources.cpp.s

# Object files for target WeatherApp
WeatherApp_OBJECTS = \
"CMakeFiles/WeatherApp.dir/src/main.cpp.o" \
"CMakeFiles/WeatherApp.dir/src/WeatherAPI.cpp.o" \
"CMakeFiles/WeatherApp.dir/src/JSONUtils.cpp.o" \
"CMakeFiles/WeatherApp.dir/src/App.cpp.o" \
"CMakeFiles/WeatherApp.dir/src/window.cpp.o" \
"CMakeFiles/WeatherApp.dir/build/.qt/rcc/qrc_qml_resources.cpp.o"

# External object files for target WeatherApp
WeatherApp_EXTERNAL_OBJECTS =

WeatherApp: CMakeFiles/WeatherApp.dir/src/main.cpp.o
WeatherApp: CMakeFiles/WeatherApp.dir/src/WeatherAPI.cpp.o
WeatherApp: CMakeFiles/WeatherApp.dir/src/JSONUtils.cpp.o
WeatherApp: CMakeFiles/WeatherApp.dir/src/App.cpp.o
WeatherApp: CMakeFiles/WeatherApp.dir/src/window.cpp.o
WeatherApp: CMakeFiles/WeatherApp.dir/build/.qt/rcc/qrc_qml_resources.cpp.o
WeatherApp: CMakeFiles/WeatherApp.dir/build.make
WeatherApp: /opt/homebrew/opt/qt/lib/QtWidgets.framework/Versions/A/QtWidgets
WeatherApp: /opt/homebrew/opt/qt/lib/QtQml.framework/Versions/A/QtQml
WeatherApp: /opt/homebrew/lib/libfmt.11.1.1.dylib
WeatherApp: /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.1.sdk/usr/lib/libcurl.tbd
WeatherApp: /opt/homebrew/opt/qt/lib/QtGui.framework/Versions/A/QtGui
WeatherApp: /opt/homebrew/opt/qt/lib/libQt6QmlBuiltins.a
WeatherApp: /opt/homebrew/opt/qt/lib/QtNetwork.framework/Versions/A/QtNetwork
WeatherApp: /opt/homebrew/opt/qt/lib/QtCore.framework/Versions/A/QtCore
WeatherApp: CMakeFiles/WeatherApp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/egorkirichenko/Projects/C++/WeatherAPP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable WeatherApp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/WeatherApp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/WeatherApp.dir/build: WeatherApp
.PHONY : CMakeFiles/WeatherApp.dir/build

CMakeFiles/WeatherApp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/WeatherApp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/WeatherApp.dir/clean

CMakeFiles/WeatherApp.dir/depend: .qt/rcc/qrc_qml_resources.cpp
	cd /Users/egorkirichenko/Projects/C++/WeatherAPP/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/egorkirichenko/Projects/C++/WeatherAPP /Users/egorkirichenko/Projects/C++/WeatherAPP /Users/egorkirichenko/Projects/C++/WeatherAPP/build /Users/egorkirichenko/Projects/C++/WeatherAPP/build /Users/egorkirichenko/Projects/C++/WeatherAPP/build/CMakeFiles/WeatherApp.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/WeatherApp.dir/depend

