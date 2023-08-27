import 'add_matrices.dart';
import 'determine_matrix.dart';
import 'diagonal_matrix.dart';
import 'lower_triangular_matrix.dart';
import 'multiply_matrices.dart';
import 'scalar_matrix.dart';
import 'sub_matrix.dart';
import 'transpose_matrix.dart';
import 'upper_triangular_matrix.dart';

enum MatrixOperation {
  add,
  scalarMultiplication,
  transpose,
  multiply,
  diagonal,
  lowerTriangular,
  upperTriangular,
  submatrix,
  determinant,
}

class Matrix {
  List<List<int>> values;

  Matrix(this.values);

  Matrix copy() {
    return Matrix(
        List.generate(values.length, (i) => List<int>.from(values[i])));
  }

  void printMatrix() {
    for (var row in values) {
      print(row);
    }
  }
}

class MatrixOperations {
  final Map<MatrixOperation, MatrixOperationHandler> _operationHandlers = {
    MatrixOperation.add: MatrixAdder(),
    MatrixOperation.scalarMultiplication: ScalarMultiplier(),
    MatrixOperation.submatrix: Submatrix(),
    MatrixOperation.transpose: TransposeMatrix(),
    MatrixOperation.diagonal: DiagonalMatrix(),
    MatrixOperation.determinant: MatrixDeterminant(),
    MatrixOperation.upperTriangular: UpperTriangularMatrix(),
    MatrixOperation.lowerTriangular: LowerTriangularMatrix(),
    MatrixOperation.multiply: MatrixMultiplier(),
  };

  Matrix? performOperation(MatrixOperation operation, Matrix matrixA,
      [Matrix? matrixB]) {
    return _operationHandlers[operation]?.performOperation(matrixA, matrixB!);
  }
}

abstract class MatrixOperationHandler {
  Matrix performOperation(Matrix matrixA, [Matrix matrixB]);
}
