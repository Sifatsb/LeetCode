void main() {
  print(Solution().twoSum([3,3], 6));
}


class Solution {
  List<int> twoSum(List<int> nums, int target) {

    for(int i = 0; i < nums.length; i++){
      for(int j = i+1; j < nums.length; j++){
        if(nums[i] + nums[j] == target){
          return [i, j];
        };
      }
    }
    return [];
  }

}