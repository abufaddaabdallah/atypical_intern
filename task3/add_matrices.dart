import 'matrix_operations.dart';

class MatrixAdder implements MatrixOperationHandler {
 @override
  Matrix performOperation(Matrix matrixA, [Matrix? matrixB]) { 
    if (matrixB == null) {
      throw ArgumentError("Matrix B is required for addition.");
    }

    if (matrixA.values.length != matrixB.values.length ||
        matrixA.values[0].length != matrixB.values[0].length) {
      throw ArgumentError("Matrices must have the same dimensions for addition.");
    }

    final resultValues = List.generate(
      matrixA.values.length,
      (i) => List.generate(
        matrixA.values[i].length,
        (j) => matrixA.values[i][j] + matrixB.values[i][j],
      ),
    );

    return Matrix(resultValues);
  }
}
