void main() {
  print(Solution().romanToInt('LVII'));
}

class Solution {
  int romanToInt(String s) {

    int sum = 0;
    Map<String, int> values = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };

    for(int i = 0; i < s.length - 1; i++){
      if(values[s[i]]! >= values[s[i+1]]!){
        sum = sum + values[s[i]]!;
      }
      else{
        sum = sum - values[s[i]]!;
      }
    }
    sum += values[s[s.length - 1]]!;

    return sum;
  }
}
