#### CMake lib P7 client config for vcpkg

##### Description
If you are using [vcpkg] and are faced with the problem of including the [P7 logger client] library like me, perhaps the solution proposed here will suit you.

The [cmake/libp7client.cmake] configuration allows you include the [P7 logger client] from [vcpkg] into your project.

##### Tested triplets:
    - x64-windows

##### How to use it:
You can use the template from this repository for configure([template instructions](#tmpl_instruct)) or use the instructions in paragraph 2 to include the P7 logger client in [your project](#proj_instruct).

1. Configure
    1. ###### <a name = "tmpl_instruct"></a> Configure from template
        1. You should have vcpkg + cmake installed and added its to env. (use the [vcpkg doc]);
        2. Clone this template repository;
        3. Execute next CLI command in cloned repository: 
            `cmake -B build -G=<your generator> -DVCPKG_PATH="<your path to vcpkg>"`
    2. ###### <a name = "proj_instruct"></a> Configuration of your project
        1. You should have vcpkg + cmake installed and added its to env. (use the [vcpkg doc]);
        2. Take `libp7client.cmake` from this repository;
        3. Include `libp7client.cmake` into your project
            example: `include(cmake/libp7client.cmake)`.
        4. Add library the "P7 logger client" into your target, via defenition "LIB_P7_CLIENT"
            example: `target_link_libraries(<your target name> LIB_P7_CLIENT)`.
2. After generating the project, you will need a [P7 server].
3. Build your project, launch the P7 server and your app. look the message on the server.

******************

[vcpkg]:https://vcpkg.io/en/
[vcpkg doc]:https://vcpkg.io/en/getting-started
[P7 logger client]:http://baical.net/p7.html
[P7 server]:http://baical.net/downloads.html
[cmake/libp7client.cmake]:https://github.com/Reifat/vcpkg_libp7client/blob/main/cmake/libp7client.cmake
