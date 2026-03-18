#include <iostream>
#include "../src/math.h"   // 🔥 use relative path (more reliable on Windows)

using namespace std;

int main() {
    cout << "Running tests..." << endl;

    if (add(2, 3) == 5) {
        cout << "Test 1 Passed\n";
    } else {
        cout << "Test 1 Failed\n";
    }

    if (add(-1, 1) == 0) {
        cout << "Test 2 Passed\n";
    } else {
        cout << "Test 2 Failed\n";
    }

    return 0;
}