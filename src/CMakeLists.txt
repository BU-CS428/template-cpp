cmake_minimum_required(VERSION 3.10)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Executable
add_executable(${PROJECT_NAME}
               main.cc)

# SPDLOG Library
target_include_directories(${PROJECT_NAME} PRIVATE ${CMAKE_SOURCE_DIR}/lib/spdlog/include)
target_link_directories(${PROJECT_NAME} PRIVATE
               spdlog::spdlog)

# Put executable at the top level build/ directory
set_target_properties(${PROJECT_NAME} PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})