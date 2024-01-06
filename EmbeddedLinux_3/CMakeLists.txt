cmake_minimum_required(VERSION 3.2)

project(Calculator
	VERSION 1.0
	DESCRIPTION "Simple Calculator Application")
	

# build the operation cmake 
add_subdirectory(${CMAKE_SOURCE_DIR}/Lib)


add_executable(${CMAKE_PROJECT_NAME} main.c)


target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE operation)

target_include_directories(${CMAKE_PROJECT_NAME} PUBLIC operation)

message("Finished building ${CMAKE_PROJECT_NAME}")
