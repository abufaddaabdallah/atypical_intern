import 'matrix.dart';
import 'matrix_operations.dart';

void main() {
  final operations = MatrixOperations();
  final matrixA = Matrix([
    [2, 4, 6],
    [8, 1, 3],
    [5, 7, 9],
  ]);
  final matrixB = Matrix([
    [9, 7, 5],
    [3, 6, 2],
    [4, 1, 8],
  ]);

  final matrixScalar = Matrix([
    [4, 7, 2],
    [1, 5, 8],
    [9, 3, 6],
  ]);

  final matrixTransposition = Matrix([
    [2, 3, 5],
    [8, 1, 7],
    [6, 4, 9],
  ]);

  final matrixMultiplyA = Matrix([
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ]);

  final matrixMultiplyB = Matrix([
    [9, 8, 7],
    [6, 5, 4],
    [3, 2, 1],
  ]);

  final matrixDiagonal = Matrix([
    [2, 4, 6],
    [8, 1, 3],
    [5, 7, 9],
  ]);

  final matrixLowerTriangular = Matrix([
    [2, 4, 6],
    [8, 1, 3],
    [5, 7, 9],
  ]);

  final matrixUpperTriangular = Matrix([
    [2, 4, 6],
    [8, 1, 3],
    [5, 7, 9],
  ]);

  final matrixSub = Matrix([
    [2, 4, 6],
    [8, 1, 3],
    [5, 7, 9],
  ]);
  final matrixDeterminant = Matrix([
    [2, 1, 3],
    [4, 5, 6],
    [7, 8, 9],
  ]);

  final resultAdd =
      operations.performOperation2(MatrixOperation.add, matrixA, matrixB);
  // final resultScalar = operations.performOperation(
  //     MatrixOperation.scalarMultiplication, matrixScalar);
  final resultTranspose = operations.performOperation(
      MatrixOperation.transpose, matrixTransposition);
  final resultMultiply = operations.performOperation2(
      MatrixOperation.multiply, matrixMultiplyA, matrixMultiplyB);
  final resultDiagonal =
      operations.performOperation(MatrixOperation.diagonal, matrixDiagonal);
  final resultLowerTriangular = operations.performOperation(
      MatrixOperation.lowerTriangular, matrixLowerTriangular);
  final resultUpperTriangular = operations.performOperation(
      MatrixOperation.upperTriangular, matrixUpperTriangular);
  final resultSub =
      operations.performOperation(MatrixOperation.submatrix, matrixSub);
  final resultDeterminant = operations.performOperation(
      MatrixOperation.determinant, matrixDeterminant);

  print("Matrix Addition:");
  print(resultAdd);

  print("\nScalar Multiplication:");
  // resultScalar!.printMatrix;
  print("\nMatrix Transposition:");
  print(resultTranspose);
  print("\nMatrix Multiplication:");
  print(resultMultiply);
  print("\nDiagonal Matrix:");
  resultDiagonal!.printMatrix;
  print(resultDiagonal);

  print("\nLower Triangular Matrix:");
  print(resultLowerTriangular);

  print("\nUpper Triangular Matrix:");
  print(resultUpperTriangular);
  print("\nSub Matrix:");
  print(resultSub);
  print("\nDeterminany Matrix:");
  print(resultDeterminant);
}
