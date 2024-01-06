void main(){
  print(Solution().shuffle([2,5,1,3,4,7], 3));
}

class Solution {
  shuffle(List<int> nums, int n) {

    List<int> newList = List<int>.filled(2 * n, 0);

    for(int i = 0, j = 0; i < n; i++, j+=2){
      newList[j] = nums[i];
      newList[j+1] = nums[i+n];
    }

    return newList;
  }
}