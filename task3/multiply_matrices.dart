import 'matrix_operations.dart';

class MatrixMultiplier implements MatrixOperationHandler {
  @override
  Matrix performOperation(Matrix matrixA, [Matrix? matrixB]) {
    if (matrixB == null) {
      throw ArgumentError("Matrix multiplication requires two matrices.");
    }

    if (matrixA.values[0].length != matrixB.values.length) {
      throw ArgumentError("Number of columns in Matrix A must match number of rows in Matrix B for multiplication.");
    }

    return _multiplyMatrices(matrixA, matrixB);
  }

  Matrix _multiplyMatrices(Matrix matrixA, Matrix matrixB) {
    final resultValues = List.generate(
      matrixA.values.length,
      (i) => List.generate(
        matrixB.values[0].length,
        (j) {
          var sum = 0;
          for (var k = 0; k < matrixA.values[i].length; k++) {
            sum += matrixA.values[i][k] * matrixB.values[k][j];
          }
          return sum;
        },
      ),
    );

    return Matrix(resultValues);
  }
}