void main(){
  print(Solution().longestCommonPrefix(['abcdefgh', 'abcderkle', 'abcdrelwjl', 'abcdrelwjjekqjl']));
}

class Solution {
  String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) return "";

    strs.sort();

    String firstString = strs[0];
    String lastString = strs[strs.length - 1];
    int minimumLength = firstString.length > lastString.length ? lastString.length : firstString.length;

    int i = 0;
    for (i = 0; i < minimumLength && firstString[i] == lastString[i]; i++) {
    }

    return firstString.substring(0, i);
  }
}