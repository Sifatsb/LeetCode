void main(){
  print(Solution().numIdenticalPairs([1,1,1,1]));
}

class Solution {
  int numIdenticalPairs(List<int> nums) {

    int count = 0;
    for(int i = 0; i < nums.length; i++){
      for(int j = i; j < nums.length-1; j ++){
        if(nums[i] == nums[j+1]) count++;
      }
    }

    return count;

  }
}