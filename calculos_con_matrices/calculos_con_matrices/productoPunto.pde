void productoPunto(float[] vecA, float[] vecB) {
  float suma = 0;
  for (int i = 0; i < tamaño; i++) suma += vecA[i] * vecB[i];
  puntoVV = suma;
  println(suma);
}
