cmake_minimum_required(VERSION 3.14)
project(learnopengl)

set(CMAKE_CXX_STANDARD 14)


add_executable(hellowindow hellowindow.cpp glad.c)

target_link_libraries(hellowindow PRIVATE -lglfw3 -lGL -lX11 -lXi -lXrandr -ldl -lXxf86vm -lXinerama -lXcursor -lrt -lm -pthread)
