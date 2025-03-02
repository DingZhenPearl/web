#include <iostream>
#include <vector>
#include <unordered_map>
using namespace std;

vector<int> twoSum(vector<int>& nums, int target) {
    // 创建哈希表，key为数值，value为索引
    unordered_map<int, int> hash;
    
    for (int i = 0; i < nums.size(); i++) {
        // 计算当前元素需要的配对元素
        int complement = target - nums[i];
        
        // 检查哈希表中是否已经存在配对元素
        if (hash.find(complement) != hash.end()) {
            // 如果找到了配对元素，返回两个元素的下标
            return {hash[complement], i};
        }
        
        // 将当前元素及其下标加入哈希表
        hash[nums[i]] = i;
    }
    
    // 如果没有找到符合条件的两个数，返回空数组（题目保证有解，所以实际上不会执行到这里）
    return {};
}

int main() {
    // 读取输入
    vector<int> nums;
    int num, target;
    
    // 读取数组元素和目标值
    while (cin >> num) {
        nums.push_back(num);
        // 最后一个输入的数字是目标值target
        if (cin.peek() == '\n' || cin.peek() == EOF) {
            target = num;
            nums.pop_back(); // 从数组中移除目标值
            break;
        }
    }
    
    // 调用两数之和函数
    vector<int> result = twoSum(nums, target);
    
    // 按要求输出结果为JSON格式
    cout << "[" << result[0] << "," << result[1] << "]" << endl;
    
    return 0;
}