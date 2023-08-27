import 'matrix_operations.dart';
import 'matrix.dart';

class LowerTriangularMatrix implements MatrixOperationHandler {
  @override
  Matrix performOperation(Matrix matrixA, [Matrix? matrixB]) {
    if (matrixB != null) {
      throw ArgumentError("Lower triangular matrix operation only requires one matrix.");
    }

    return _createLowerTriangularMatrix(matrixA);
  }

  Matrix _createLowerTriangularMatrix(Matrix matrix) {
    final resultValues = List.generate(
      matrix.values.length,
      (i) => List.generate(matrix.values[i].length, (j) => (i >= j) ? matrix.values[i][j] : 0),
    );

    return Matrix(resultValues);
  }
}