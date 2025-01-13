class Solution {
  bool canConstruct(String s, int k) {
    if (k > s.length) return false;

    List<int> frequencies = List.filled(26, 0);
    for (var char in s.runes) {
      frequencies[char - 'a'.codeUnitAt(0)]++;
    }

    int count = 0;
    for (int charCount in frequencies) {
      if (charCount % 2 != 0) count++;
    }

    return count <= k;
  }
}

void main() {
  var solution = Solution();

  print(solution.canConstruct("annabelle", 2));
  print(solution.canConstruct("leetcode", 3));
  print(solution.canConstruct("true", 4));
}
