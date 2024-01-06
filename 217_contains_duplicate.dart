void main() {
  print(Solution().containsDuplicate([1, 1, 1, 3, 3, 4, 3, 2, 4, 2]));
}

class Solution {
  bool containsDuplicate(List<int> nums) {
    nums.sort();

    for (int i = 0; i < nums.length - 1; i++) {
      if (nums[i] == nums[i + 1]) {
        return true;
      }
    }
    return false;
  }
}
