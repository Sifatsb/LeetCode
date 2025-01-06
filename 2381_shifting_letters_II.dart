String shiftingLetters(String s, List<List<int>> shifts) {
  int n = s.length;
  List<int> netShifts = List.filled(n + 1, 0);

  if (s.isEmpty || shifts.isEmpty) return '';

  for (var shift in shifts) {
    int startPoint = shift[0];
    int endPoint = shift[1];
    int direction = shift[2];
    int shiftValue = direction == 1 ? 1 : -1;

    netShifts[startPoint] += shiftValue;
    if (n > endPoint + 1) {
      netShifts[endPoint + 1] -= shiftValue;
    }
  }

  int cumulativeShift = 0;
  List<int> result = List.filled(n, 0);
  for (int i = 0; i < n; i++) {
    cumulativeShift += netShifts[i];
    int shift = (cumulativeShift % 26 + 26) % 26;
    result[i] = ((s.codeUnitAt(i) - 'a'.codeUnitAt(0) + shift) % 26) +
        'a'.codeUnitAt(0);
  }

  return String.fromCharCodes(result);
}

void main() {
  print(shiftingLetters("abc", [
    [0, 1, 0],
    [1, 2, 1],
    [0, 2, 1]
  ]));

  print(shiftingLetters("dztz", [
    [0, 0, 0],
    [1, 1, 1]
  ]));
}
