#pragma once
#include <exception>
#include <string>

class AbstractError : public std::exception {
protected:
    std::string message;
public:
    AbstractError(const std::string& msg) : message(msg) {}
    const char* what() const noexcept override {
        return message.c_str();
    }
};

class FileReadError : public AbstractError {
public:
    FileReadError(const std::string& msg) : AbstractError(msg) {}
};

class ZeroPivotError : public AbstractError {
public:
    ZeroPivotError(const std::string& msg) : AbstractError(msg) {}
};

class ThreadError : public AbstractError {
public:
    ThreadError(const std::string& msg) : AbstractError(msg) {}
};

class DimensionError : public AbstractError {
public:
    DimensionError(const std::string& msg) : AbstractError(msg) {}
};
