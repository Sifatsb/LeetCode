void main(){
  print(Solution().getConcatenation([1,2,3]));
}

class Solution {
  List<int> getConcatenation(List<int> nums) {

    List<int> list = List.from(nums);
    nums.addAll(list);
    return nums;

  }
}