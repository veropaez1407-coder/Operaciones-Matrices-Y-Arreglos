void productoVectorMatriz(float[] V, int[][] M) {
  for (int j = 0; j < tamaño; j++) {
    float suma = 0;
    for (int i = 0; i < tamaño; i++) suma += V[i] * M[i][j];
    VxM[j] = suma;
    println(suma);
  }
}
