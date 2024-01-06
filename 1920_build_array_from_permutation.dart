List<int> buildArrayFromPermutation(List<int> permutation) {
  List<int> result = List<int>.filled(permutation.length, 0); // Initialize an empty array of the same length

  for (int i = 0; i < permutation.length; i++) {
    result[i] = permutation[i]; // Use the permutation to fill in the values
  }

  return result;
}

void main() {
  List<int> permutation = [0,2,1,5,3,4];
  List<int> newArray = buildArrayFromPermutation(permutation);

  print(newArray); // Output: [2, 0, 1, 3]
}
