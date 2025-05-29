#include <iostream>
#include <fstream>
#include <cmath>
#include "Matrix.hpp"
#include "Vector.hpp"
#include "LU_Solver.hpp"
#include "Errors.hpp"

int main(int argc, char* argv[]) {
    if (argc != 3) {
        std::cerr << "Usage: " << argv[0] << " <num_threads> <input_file>\n";
        return 1;
    }

    try {
        unsigned int numThreads = std::stoi(argv[1]);
        std::ifstream file(argv[2]);

        if (!file.is_open())
            throw FileReadError("Failed to open input file");

        size_t n;
        if (!(file >> n))
            throw FileReadError("Failed to read matrix size");

        Matrix A(n);
        A.readFromStream(file);

        Vector b(n);
        b.readFromStream(file);

        LU_Solver solver(numThreads);
        solver.decompose(A);

        Vector x = solver.solve(b);

        solver.printLU();

        std::cout << "Solution x:\n";
        x.print(std::cout);

        double* Ax = A.multiply(x.raw());
        double norm2 = 0.0;
        for (size_t i = 0; i < n; ++i) {
            double diff = Ax[i] - b[i];
            norm2 += diff * diff;
        }
        delete[] Ax;

        std::cout << "Residual ||Ax - b||2 = " << std::sqrt(norm2) << "\n";

        Matrix LU = solver.getL().multiply(solver.getU());
        std::cout << "Matrix L * U:\n";
        LU.print(std::cout);

    } catch (const AbstractError& e) {
        std::cerr << "Error: " << e.what() << std::endl;
        return 1;
    } catch (const std::exception& e) {
        std::cerr << "Unhandled exception: " << e.what() << std::endl;
        return 1;
    }

    return 0;
}
