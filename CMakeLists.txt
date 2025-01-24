cmake_minimum_required(VERSION 3.10)
project(WeatherApp)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_PREFIX_PATH "/opt/homebrew/opt/qt/lib/cmake/Qt6")  
set(nlohmann_json_DIR "/.vcpkg/vcpkg/installed/arm64-osx/share/nlohmann_json/nlohmann_jsonConfig.cmake")

find_package(Qt6 REQUIRED COMPONENTS Widgets Qml QmlIntegration)
find_package(fmt CONFIG REQUIRED)
find_package(CURL REQUIRED)
find_package(nlohmann_json CONFIG REQUIRED)

set(SOURCES
    src/main.cpp
    src/WeatherAPI.cpp
    src/JSONUtils.cpp
    src/App.cpp
    src/window.cpp
)

# set(INCLUDES
#     inc/App.h
#     inc/JSONUtils.h
#     inc/WeatherAPI.h
#     inc/window.h
# )

add_executable(WeatherApp 
    ${SOURCES}
    ${INCLUDES}
)

qt_add_resources(WeatherApp "qml_resources"
    PREFIX "/"
    FILES
        ui/Main.qml
        # ui/Components/Button.qml
)

target_include_directories(WeatherApp PRIVATE inc)

target_link_libraries(WeatherApp PRIVATE Qt6::Widgets Qt6::Qml Qt6::QmlIntegration)
target_link_libraries(WeatherApp PRIVATE fmt::fmt)
target_link_libraries(WeatherApp PRIVATE CURL::libcurl)
target_link_libraries(WeatherApp PRIVATE nlohmann_json::nlohmann_json)
