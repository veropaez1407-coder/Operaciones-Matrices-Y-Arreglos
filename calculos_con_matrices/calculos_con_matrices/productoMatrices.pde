int[][] productoMatrices(int[][] matA, int[][] matB) {
  for (int i = 0; i < tamaño; i++) {
    for (int j = 0; j < tamaño; j++) {
      int suma = 0;
      for (int k = 0; k < tamaño; k++) suma += matA[i][k] * matB[k][j];
      AmultB[i][j] = suma;
    }
  }
  return AmultB;
}
