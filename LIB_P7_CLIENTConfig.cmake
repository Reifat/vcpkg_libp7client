# Copyright (c) 12.22 Rayfat
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


set(P7_LIB_NAME P7x64)
set(P7_LIB_DEBUG_NAME P7x64d)

set(P7_STATIC_LIB_NAME       ${P7_LIB_NAME}.lib)
set(P7_SHARED_LIB_NAME       ${P7_LIB_NAME}.dll)

set(P7_STATIC_LIB_DEBUG_NAME ${P7_LIB_DEBUG_NAME}.lib)
set(P7_SHARED_LIB_DEBUG_NAME ${P7_LIB_DEBUG_NAME}.dll)

set(P7_STATIC_LIB_PATH        "${VCPKG_INSTALLED_DIR}/${VCPKG_TARGET_TRIPLET}/lib")
set(P7_SHARED_LIB_PATH        "${VCPKG_INSTALLED_DIR}/${VCPKG_TARGET_TRIPLET}/bin")

set(P7_STATIC_LIB_DEBUG_PATH "${VCPKG_INSTALLED_DIR}/${VCPKG_TARGET_TRIPLET}/debug/lib")
set(P7_SHARED_LIB_DEBUG_PATH "${VCPKG_INSTALLED_DIR}/${VCPKG_TARGET_TRIPLET}/debug/bin")

set(P7_INCLUDE_PATH          "${VCPKG_INSTALLED_DIR}/${VCPKG_TARGET_TRIPLET}/include/P7")

add_library(LIB_P7_CLIENT UNKNOWN IMPORTED)
set_target_properties(LIB_P7_CLIENT PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${P7_INCLUDE_PATH}")

set_property(TARGET LIB_P7_CLIENT   PROPERTY IMPORTED_LOCATION_RELEASE "${P7_STATIC_LIB_PATH}/${P7_STATIC_LIB_NAME}")
set_property(TARGET LIB_P7_CLIENT   PROPERTY IMPORTED_LOCATION_DEBUG   "${P7_STATIC_LIB_DEBUG_PATH}/${P7_STATIC_LIB_DEBUG_NAME}")

set_property(TARGET LIB_P7_CLIENT PROPERTY IMPORTED_IMPLIB   "${P7_STATIC_LIB_PATH}/${P7_STATIC_LIB_NAME}")