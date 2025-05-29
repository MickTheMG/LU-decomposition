#pragma once
#include "Matrix.hpp"
#include "Vector.hpp"

class LU_Solver {
private:
    Matrix L, U;
    size_t n;
    unsigned int numThreads;

public:
    LU_Solver(unsigned int threads);
    void decompose(const Matrix& A);
    Vector solve(const Vector& b);
    void printLU() const;

    const Matrix& getL() const;
    const Matrix& getU() const;
};
