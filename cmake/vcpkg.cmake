#
# vcpkg integration
#

# get vcpkg root from env
if(NOT DEFINED CMAKE_TOOLCHAIN_FILE)
    set(CMAKE_TOOLCHAIN_FILE "${VCPKG_PATH}/scripts/buildsystems/vcpkg.cmake" CACHE STRING "")
endif()

# select target
set(VCPKG_TARGET_TRIPLET "x64-windows" CACHE STRING "")
