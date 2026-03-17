void imprimirMatrizFloat(float[][] matriz) {
  for (int i = 0; i < tamaño; i++) {
    String fila = "";
    for (int j = 0; j < tamaño; j++) {
      fila += (matriz[i][j]) + " ";
    }
    println(fila);
  }
}
//imprime la matriz
