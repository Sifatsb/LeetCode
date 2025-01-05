class Solution {
  int countPalindromicSubsequence(String s) {
    Map<String, List<int>> positions = {};

    for (int i = 0; i < s.length; i++) {
      if (!positions.containsKey(s[i])) {
        positions[s[i]] = [i, i];
      } else {
        positions[s[i]]![1] = i;
      }
    }

    int count = 0;

    positions.forEach((char, positions) {
      int first = positions[0];
      int last = positions[1];

      if (last > first + 1) {
        Set<String> middleCharacters = {};
        for (int i = first + 1; i < last; i++) {
          middleCharacters.add(s[i]);
        }
        count += middleCharacters.length;
      }
    });

    return count;
  }
}

void main() {
  print(Solution().countPalindromicSubsequence("aabca"));
  print(Solution().countPalindromicSubsequence("adc"));
  print(Solution().countPalindromicSubsequence("bbcbaba"));
}
