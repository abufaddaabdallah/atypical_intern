import 'matrix_operations.dart';

class TransposeMatrix implements MatrixOperationHandler {
  @override
  Matrix performOperation(Matrix matrixA, [Matrix? matrixB]) {
    if (matrixB != null) {
      throw ArgumentError("Transpose operation only requires one matrix.");
    }

    return _transposeMatrix(matrixA);
  }

  Matrix _transposeMatrix(Matrix matrix) {
    final resultValues = List.generate(
      matrix.values[0].length,
      (i) => List.generate(matrix.values.length, (j) => matrix.values[j][i]),
    );

    return Matrix(resultValues);
  }
}