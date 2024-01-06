# Inner Cmake to produce the STATIC operation library

cmake_minimum_required(VERSION 3.2)

project(operation
	VERSION 1.0
	DESCRIPTION "A static math operations library")

add_library(${PROJECT_NAME} STATIC Source/addition.c Source/division.c Source/modulus.c Source/multiplication.c Source/subtraction.c)

target_include_directories(${PROJECT_NAME} INTERFACE ${CMAKE_SOURCE_DIR}/Include)
