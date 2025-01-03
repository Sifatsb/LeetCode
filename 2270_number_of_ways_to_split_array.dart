void main() {
  List<int> nums1 = [10, 4, -8, 7];
  print(Solution().waysToSplitArray(nums1));

  List<int> nums2 = [2, 3, 1, 0];
  print(Solution().waysToSplitArray(nums2));
}

class Solution {
  int waysToSplitArray(List<int> nums) {
    if (nums.isEmpty) return 0;

    int n = nums.length;

    List<int> prefixSum = List.filled(n, 0);
    prefixSum[0] = nums[0];
    for (int i = 1; i < n; i++) {
      prefixSum[i] = prefixSum[i - 1] + nums[i];
    }

    int totalSum = prefixSum[n - 1];

    int validSplitCount = 0;
    for (int i = 0; i < n - 1; i++) {
      int leftSum = prefixSum[i];
      int rightSum = totalSum - leftSum;
      if (leftSum >= rightSum) {
        validSplitCount++;
      }
    }

    return validSplitCount;
  }
}
