import 'matrix_operations.dart';

class UpperTriangularMatrix implements MatrixOperationHandler {
  @override
  Matrix performOperation(Matrix matrixA, [Matrix? matrixB]) {
    if (matrixB != null) {
      throw ArgumentError("Upper triangular matrix operation only requires one matrix.");
    }

    return _createUpperTriangularMatrix(matrixA);
  }

  Matrix _createUpperTriangularMatrix(Matrix matrix) {
    final resultValues = List.generate(
      matrix.values.length,
      (i) => List.generate(matrix.values[i].length, (j) => (i <= j) ? matrix.values[i][j] : 0),
    );

    return Matrix(resultValues);
  }
}