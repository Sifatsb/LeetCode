class Solution {
  int prefixCount(List<String> words, String pref) {
    int count = 0;

    if (words.isEmpty) return count;

    for (int i = 0; i < words.length; i++) {
      if (words[i].startsWith(pref)) count++;
    }

    return count;
  }
}

void main() {
  Solution solution = Solution();

  print(solution.prefixCount(["pay", "attention", "practice", "attend"], "at"));
  print(solution.prefixCount(["leetcode", "win", "loops", "success"], "code"));
}
