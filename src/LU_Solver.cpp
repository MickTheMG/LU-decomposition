#include "LU_Solver.hpp"
#include <thread>
#include <cmath>
#include <algorithm>

LU_Solver::LU_Solver(unsigned int threads) : numThreads(threads) {}

void LU_Solver::decompose(const Matrix& A) {
    n = A.size();
    L = Matrix(n);
    U = A;

    for (size_t i = 0; i < n; ++i)
        L(i, i) = 1.0;

    for (size_t k = 0; k < n; ++k) {
        double pivot = U(k, k);
        if (fabs(pivot) < 1e-12)
            throw ZeroPivotError("Zero pivot at row " + std::to_string(k));

        size_t remainingRows = n - k - 1;
        unsigned int threadsToUse = (remainingRows > 0) ? std::min(numThreads, static_cast<unsigned int>(remainingRows)) : 1;

        std::vector<std::thread> threads;
        threads.reserve(threadsToUse);
        size_t chunkSize = (remainingRows + threadsToUse - 1) / threadsToUse;

        for (unsigned int t = 0; t < threadsToUse; ++t) {
            size_t start = k + 1 + t * chunkSize;
            size_t end = std::min(start + chunkSize, n);

            if (start < end) {
                threads.emplace_back([&, start, end, k, pivot]() {
                    for (size_t i = start; i < end; ++i) {
                        double factor = U(i, k) / pivot;
                        L(i, k) = factor;
                        for (size_t j = k + 1; j < n; ++j)
                            U(i, j) -= factor * U(k, j);
                        U(i, k) = 0.0;
                    }
                });
            }
        }

        for (auto& th : threads)
            th.join();
    }
}

Vector LU_Solver::solve(const Vector& b) {
    if (b.size() != n) throw DimensionError("Dimension mismatch");

    double* y = new double[n];
    for (size_t i = 0; i < n; ++i) {
        y[i] = b[i];
        for (size_t j = 0; j < i; ++j)
            y[i] -= L(i, j) * y[j];
    }

    Vector x(n);
    for (int i = static_cast<int>(n) - 1; i >= 0; --i) {
        double sum = y[i];
        for (size_t j = i + 1; j < n; ++j)
            sum -= U(i, j) * x[j];
        if (fabs(U(i, i)) < 1e-12)
            throw ZeroPivotError("Zero on diagonal at row " + std::to_string(i));
        x[i] = sum / U(i, i);
    }

    delete[] y;
    return x;
}

void LU_Solver::printLU() const {
    std::cout << "Matrix L:\n"; L.print(std::cout);
    std::cout << "Matrix U:\n"; U.print(std::cout);
}

const Matrix& LU_Solver::getL() const { return L; }
const Matrix& LU_Solver::getU() const { return U; }
