#include <iostream>
#include <chrono>
#include <thread>

int main() {
    while (true) {
        std::cout << "Hello, World!" << std::endl;
        using namespace std::literals::chrono_literals;
        std::this_thread::sleep_for(1s);
    }
    return 0;
}
