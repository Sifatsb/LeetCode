class Solution {
  List<String> stringMatching(List<String> words) {
    if (words.isEmpty) return [];

    Set<String> result = {};
    for (int i = 0; i < words.length; i++) {
      for (int j = 0; j < words.length; j++) {
        if (i != j && words[j].contains(words[i])) {
          result.add(words[i]);
          break;
        }
      }
    }

    return result.toList();
  }
}

void main() {
  Solution().stringMatching(["mass", "as", "hero", "superhero"]);
  Solution().stringMatching(["leetcode", "et", "code"]);
  Solution().stringMatching(["blue", "green", "bu"]);
}
