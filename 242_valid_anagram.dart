void main() {
  print(Solution().isAnagram('rat', 'car'));
}

class Solution {
  bool isAnagram(String s, String t) {
    if (String.fromCharCodes(s.runes.toList()..sort()) ==
        String.fromCharCodes(t.runes.toList()..sort())) {
      return true;
    }

    return false;
  }
}
