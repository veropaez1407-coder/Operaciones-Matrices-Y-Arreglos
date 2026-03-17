void llenarMatriz(int[][] rellenar, int tipoLlenado) {
  int contador = 1;
  for (int i = 0; i < tamaño; i++) {
    for (int j = 0; j < tamaño; j++) {
      if (tipoLlenado == 1) {
        rellenar[i][j] = int(random(-9, 9));
      } else {
        rellenar[i][j] = contador;
        contador++;
      }
    }
  }
}
