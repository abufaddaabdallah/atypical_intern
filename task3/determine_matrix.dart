import 'matrix_operations.dart';

class MatrixDeterminant implements MatrixOperationHandler {
  @override
  Matrix performOperation(Matrix matrixA, [Matrix? matrixB]) {
    if (matrixB != null) {
      throw ArgumentError("Determinant operation only requires one matrix.");
    }

    if (matrixA.values.length != matrixA.values[0].length) {
      throw ArgumentError("Determinant can only be calculated for square matrices.");
    }

    return _calculateDeterminant(matrixA);
  }

  Matrix _calculateDeterminant(Matrix matrix) {
    if (matrix.values.length == 2 && matrix.values[0].length == 2) {
      return Matrix([[matrix.values[0][0] * matrix.values[1][1] - matrix.values[0][1] * matrix.values[1][0]]]);
    }

    var determinant = 0;
    for (var i = 0; i < matrix.values.length; i++) {
      final minor = _createMinorMatrix(matrix, i);
      determinant += (i % 2 == 0 ? 1 : -1) * matrix.values[0][i] * _calculateDeterminant(minor).values[0][0];
    }

    return Matrix([[determinant]]);
  }

  Matrix _createMinorMatrix(Matrix matrix, int colToRemove) {
    final minorValues = List.generate(
      matrix.values.length - 1,
      (i) => List.generate(
        matrix.values[i].length - 1,
        (j) => matrix.values[i + 1][j < colToRemove ? j : j + 1],
      ),
    );

    return Matrix(minorValues);
  }
}