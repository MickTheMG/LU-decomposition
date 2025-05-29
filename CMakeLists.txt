cmake_minimum_required(VERSION 3.10)
project(LU_Decomposition)

set(CMAKE_CXX_STANDARD 17)

include_directories(include)

add_executable(lu_decomposition
    src/main.cpp
    src/matrix.cpp
    src/vector.cpp
    src/lu_solver.cpp
)

# Optional: Set output directory
set_target_properties(lu_decomposition PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
