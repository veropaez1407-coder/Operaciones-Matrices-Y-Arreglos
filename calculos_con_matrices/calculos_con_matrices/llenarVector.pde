void llenarVector(float[] rellenar, int tipoLlenado) {
  int contador = 1;
  for (int i = 0; i < tamaño; i++) {
    if (tipoLlenado == 1) {
      rellenar[i] = int(random(-9, 9));
    } else {
      rellenar[i] = contador;
      contador++;
    }
  }
}
