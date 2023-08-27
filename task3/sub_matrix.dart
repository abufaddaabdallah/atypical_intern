import 'matrix_operations.dart';

class Submatrix implements MatrixOperationHandler {
  @override
  Matrix performOperation(Matrix matrixA, [Matrix? matrixB]) {
    if (matrixB != null) {
      throw ArgumentError("Submatrix operation only requires one matrix.");
    }

    final rowsToRemove = [0, 2]; // Example: Remove the first and third rows
    final colsToRemove = [2];    // Example: Remove the third column

    return _createSubmatrix(matrixA, rowsToRemove, colsToRemove);
  }

  Matrix _createSubmatrix(Matrix matrix, List<int> rowsToRemove, List<int> colsToRemove) {
    final resultValues = <List<int>>[];
    for (var i = 0; i < matrix.values.length; i++) {
      if (!rowsToRemove.contains(i)) {
        final newRow = <int>[];
        for (var j = 0; j < matrix.values[i].length; j++) {
          if (!colsToRemove.contains(j)) {
            newRow.add(matrix.values[i][j]);
          }
        }
        resultValues.add(newRow);
      }
    }

    return Matrix(resultValues);
  }
}