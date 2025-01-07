List<int> minOperations(String boxes) {
  int n = boxes.length;
  List<int> result = List.filled(n, 0);

  for (int i = 0; i < n; i++) {
    int countOperations = 0;
    for (int j = 0; j < n; j++) {
      if (boxes[j] == '1') {
        countOperations += (i - j).abs();
      }
    }
    result[i] = countOperations;
  }

  return result;
}

void main() {
  String boxes = "001011";
  print(minOperations(boxes)); // Output: [11, 8, 5, 4, 3, 4]
}
