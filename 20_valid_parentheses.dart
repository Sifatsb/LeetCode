void main() {
  print(Solution().isValid('()'));
}

class Solution {
  bool isValid(String s) {
    if (s.isEmpty) {
      return true;
    } else {
      List<String> stack = [];

      for (var i = 0; i < s.length; i++) {
        if (s[i] == "(" || s[i] == "{" || s[i] == "[") {
          stack.add(s[i]);
        } else if (stack.isEmpty ||
            (s[i] == ")" && stack.last != "(") ||
            (s[i] == "}" && stack.last != "{") ||
            (s[i] == "]" && stack.last != "[")) {
          return false;
        } else {
          stack.removeLast();
        }
      }
      return stack.isEmpty;
    }
  }
}
