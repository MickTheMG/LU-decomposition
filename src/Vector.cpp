#include "Vector.hpp"

Vector::Vector() : n(0), data(nullptr) {}

Vector::Vector(size_t n) : n(n) {
    data = new double[n]();
}

Vector::Vector(const Vector& other) : n(other.n) {
    data = new double[n];
    for (size_t i = 0; i < n; ++i)
        data[i] = other.data[i];
}

Vector::~Vector() {
    delete[] data;
}

size_t Vector::size() const { return n; }

double& Vector::operator[](size_t i) {
    if (i >= n) throw DimensionError("Vector index out of range");
    return data[i];
}

double Vector::operator[](size_t i) const {
    if (i >= n) throw DimensionError("Vector index out of range");
    return data[i];
}

void Vector::readFromStream(std::ifstream& file) {
    for (size_t i = 0; i < n; ++i)
        if (!(file >> data[i]))
            throw FileReadError("Error reading vector data");
}

void Vector::print(std::ostream& os) const {
    for (size_t i = 0; i < n; ++i)
        os << data[i] << " ";
    os << "\n";
}

double* Vector::raw() const {
    return data;
}
