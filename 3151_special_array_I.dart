class Solution {
  bool isArraySpecial(List<int> nums) {
    bool flag = false;
    if (nums.length == 1) return true;

    for (int i = 0; i < nums.length - 1; i++) {
      int index1 = nums[i] % 2;
      int index2 = nums[i + 1] % 2;

      if (index1 == index2) {
        flag = false;
        break;
      } else {
        flag = true;
      }
    }

    return flag;
  }
}

void main() {
  var solution = Solution();

  print(solution.isArraySpecial([1]));
  print(solution.isArraySpecial([2, 1, 4]));
  print(solution.isArraySpecial([4, 3, 1, 6]));
}
