void main() {
  print(Solution().isPalindrome(323));
}

class Solution {
  bool isPalindrome(int x) {

    int reverseNumber = 0;
    int number = x;

    while (x > 0) {
      int reminder = x % 10;
      reverseNumber = reverseNumber * 10 + reminder;
      x = x ~/ 10;
    }

    return reverseNumber == number ? true : false;

  }
}