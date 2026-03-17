float[][] invertirMatriz(int[][] M) {//llama a la matriz de enteros y la transforma en matriz de flotantes
  float tolerancia = 0.0001; //valor muy bajo para identificar cuando un valor es menor (seria como un 0)
  float[][] aumentada = new float[tamaño][2 * tamaño];//duplica el ancho de la matriz para asi simular el metodo gauss jordan
  for (int i = 0; i < tamaño; i++) {
    for (int j = 0; j < tamaño; j++) aumentada[i][j] = M[i][j];
    aumentada[i][i + tamaño] = 1;
  }
  for (int col = 0; col < tamaño; col++) {//for para recorrer las columnas
    float pivote = aumentada[col][col];
    if (abs(pivote) < tolerancia) return null;   //compara si el pivote es 0, en ese caso no es 
    for (int j = 0; j < 2 * tamaño; j++) aumentada[col][j] /= pivote;//recorre las filas y las divide entre el pivote
    for (int fila = 0; fila < tamaño; fila++) {
      if (fila != col) {
        float factor = aumentada[fila][col];
        for (int j = 0; j < 2 * tamaño; j++)
          aumentada[fila][j] -= factor * aumentada[col][j];//anula los demas valoresde la columnas del pivote
      }
    }
  }
  float[][] inversa = new float[tamaño][tamaño];
  for (int i = 0; i < tamaño; i++)
    for (int j = 0; j < tamaño; j++)
      inversa[i][j] = aumentada[i][j + tamaño];//cuando termina todos los ciclos, copia las ultimas tres columnas y esa es la inversa
        return inversa;
}
