cmake_minimum_required(VERSION 3.21)
project(MyProject)

include(cmake/CPM.cmake) # скачаем позже
include(conan_toolchain.cmake) # генерит Conan

find_package(GTest REQUIRED)
find_package(fmt REQUIRED)

add_executable(myapp src/main.cpp)
target_link_libraries(myapp fmt::fmt)

enable_testing()
add_executable(tests tests/test_main.cpp)
target_link_libraries(tests GTest::gtest_main)
gtest_discover_tests(tests)
add_test(NAME my_tests COMMAND tests)
