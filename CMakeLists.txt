cmake_minimum_required(VERSION 3.10)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CONFIGURATION_TYPES "Debug;Release" CACHE STRING "" FORCE)

# add package manager integration
include(cmake/vcpkg.cmake)

project(demo C CXX)

# Add lib P7-logger client(It should be added after the project is definition)
include(cmake/libp7client.cmake)

add_executable(demo demo/main.cpp)
target_link_libraries(demo LIB_P7_CLIENT)