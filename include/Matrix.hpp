#pragma once
#include <iostream>
#include <fstream>
#include <cmath>
#include "Errors.hpp"

class Matrix {
private:
    size_t n;
    double** mat;
public:
    Matrix();
    Matrix(size_t n);
    Matrix(const Matrix& other);
    ~Matrix();

    size_t size() const;
    double& operator()(size_t i, size_t j);
    double operator()(size_t i, size_t j) const;

    void readFromStream(std::ifstream& file);
    double* multiply(const double* vec) const;
    Matrix multiply(const Matrix& other) const;
    void print(std::ostream& os) const;
};
