import 'matrix_operations.dart';
import 'matrix.dart';

class ScalarMultiplier implements MatrixOperationHandler {
  @override
  Matrix performOperation(Matrix matrixA, [Matrix? matrixB]) {
    if (matrixB != null) {
      throw ArgumentError("Scalar multiplication does not require a second matrix.");
    }

    return _multiplyMatrixByScalar(matrixA, matrixB as int);
  }

  Matrix _multiplyMatrixByScalar(Matrix matrix, int scalar) {
    final resultValues = List.generate(
      matrix.values.length,
      (i) => List.generate(
        matrix.values[i].length,
        (j) => matrix.values[i][j] * scalar,
      ),
    );

    return Matrix(resultValues);
  }
}
