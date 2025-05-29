#include "Matrix.hpp"

Matrix::Matrix() : n(0), mat(nullptr) {}

Matrix::Matrix(size_t n) : n(n) {
    mat = new double*[n];
    for (size_t i = 0; i < n; ++i)
        mat[i] = new double[n]();
}

Matrix::Matrix(const Matrix& other) : n(other.n) {
    mat = new double*[n];
    for (size_t i = 0; i < n; ++i) {
        mat[i] = new double[n];
        for (size_t j = 0; j < n; ++j)
            mat[i][j] = other.mat[i][j];
    }
}

Matrix::~Matrix() {
    for (size_t i = 0; i < n; ++i)
        delete[] mat[i];
    delete[] mat;
}

size_t Matrix::size() const { return n; }

double& Matrix::operator()(size_t i, size_t j) {
    if (i >= n || j >= n) throw DimensionError("Matrix index out of range");
    return mat[i][j];
}

double Matrix::operator()(size_t i, size_t j) const {
    if (i >= n || j >= n) throw DimensionError("Matrix index out of range");
    return mat[i][j];
}

void Matrix::readFromStream(std::ifstream& file) {
    for (size_t i = 0; i < n; ++i)
        for (size_t j = 0; j < n; ++j)
            if (!(file >> mat[i][j]))
                throw FileReadError("Error reading matrix data");
}

double* Matrix::multiply(const double* vec) const {
    double* result = new double[n]();
    for (size_t i = 0; i < n; ++i)
        for (size_t j = 0; j < n; ++j)
            result[i] += mat[i][j] * vec[j];
    return result;
}

Matrix Matrix::multiply(const Matrix& other) const {
    if (n != other.n) throw DimensionError("Matrix dimensions do not match");
    Matrix result(n);
    for (size_t i = 0; i < n; ++i)
        for (size_t j = 0; j < n; ++j)
            for (size_t k = 0; k < n; ++k)
                result(i, j) += mat[i][k] * other(k, j);
    return result;
}

void Matrix::print(std::ostream& os) const {
    for (size_t i = 0; i < n; ++i) {
        for (size_t j = 0; j < n; ++j)
            os << mat[i][j] << " ";
        os << "\n";
    }
}
