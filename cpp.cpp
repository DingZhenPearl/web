#include <iostream>
#include <vector>
#include <nlohmann/json.hpp>
using namespace std;
using json = nlohmann::json;

// 判断一个整数是否为回文数
bool isPalindrome(int x) {
    if (x < 0) return false;
    int original = x;
    long reversed = 0;
    while (x > 0) {
        reversed = reversed * 10 + x % 10;
        x /= 10;
    }
    return original == reversed;
}

int main() {
    int x;
    cin >> x;
    if (isPalindrome(x)) {
        cout << "true" << endl;
    } else {
        cout << "false" << endl;
    }
    return 0;
}