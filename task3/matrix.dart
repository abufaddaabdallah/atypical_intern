class Matrix {
  List<List<int>> values;

  Matrix(this.values);

  Matrix copy() {
    return Matrix(List.generate(values.length, (i) => List<int>.from(values[i])));
  }

  void printMatrix() {
    for (var row in values) {
      print(row);
    }
  }
    @override
  String toString() {
    return values.map((row) => row.join(' ')).join('\n');
  }
}