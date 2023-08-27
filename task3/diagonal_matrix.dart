import 'matrix_operations.dart';

class DiagonalMatrix implements MatrixOperationHandler {
  @override
  Matrix performOperation(Matrix matrixA, [Matrix? matrixB]) {
    if (matrixB != null) {
      throw ArgumentError(
          "Diagonal matrix operation only requires one matrix.");
    }

    return _createDiagonalMatrix(matrixA);
  }

  Matrix _createDiagonalMatrix(Matrix matrix) {
    final resultValues = List.generate(
      matrix.values.length,
      (i) => List.generate(
          matrix.values[i].length, (j) => (i == j) ? matrix.values[i][j] : 0),
    );

    return Matrix(resultValues);
  }
}
