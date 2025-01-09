class Solution {
  int countPrefixSuffixPairs(List<String> words) {
    int _count = 0;

    if (words.isEmpty) return _count;

    for (int i = 0; i < words.length; i++) {
      for (int j = i + 1; j < words.length; j++) {
        if (_isPrefixAndSuffix(words[i], words[j])) {
          _count++;
        }
      }
    }

    return _count;
  }

  bool _isPrefixAndSuffix(String str1, String str2) {
    return str2.startsWith(str1) && str2.endsWith(str1);
  }
}

void main() {
  Solution solution = Solution();

  print(solution.countPrefixSuffixPairs(["aba", "ababa", "abc", "abcd"]));
  print(solution.countPrefixSuffixPairs(["abc", "xyz", "aba"]));
  print(solution.countPrefixSuffixPairs(["a", "aa", "aaa"]));
}
