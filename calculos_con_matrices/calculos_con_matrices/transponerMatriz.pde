void transponerMatriz(int[][] original, int[][] resultado) {
  for (int i = 0; i < tamaño; i++) {
    for (int j = 0; j < tamaño; j++) {
      resultado[j][i] = original[i][j];
    }
  }
}
