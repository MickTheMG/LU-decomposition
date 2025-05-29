#pragma once
#include <iostream>
#include <fstream>
#include "Errors.hpp"

class Vector {
private:
    size_t n;
    double* data;
public:
    Vector();
    Vector(size_t n);
    Vector(const Vector& other);
    ~Vector();

    size_t size() const;
    double& operator[](size_t i);
    double operator[](size_t i) const;

    void readFromStream(std::ifstream& file);
    void print(std::ostream& os) const;
    double* raw() const;
};
