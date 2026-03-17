void imprimirProductoMatrices(int[][] AxB) {
  for (int i = 0; i < tamaño; i++) {
    String fila = "";
    for (int j = 0; j < tamaño; j++) {
      fila += AxB[i][j] + " ";
    }
    println(fila);
  }
  println();
}
//imprime el producto de las matrices
