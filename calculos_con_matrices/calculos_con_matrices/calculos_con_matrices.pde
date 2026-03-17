// Curso Programacion I
// Nombres: Lizeth Veronica Chitiva Paez y Cristian Camilo Afanador Acosta
// Actividad: Operaciones con matrices y arreglos (Processing / Java)

int tamaño = 3;
int[][] matrizA = new int[tamaño][tamaño];//guarda la amtriz a
int[][] matrizB = new int[tamaño][tamaño];//guarda la matriz b
float[] vectorA = new float[tamaño];//guarda el vector a
float[] vectorB = new float[tamaño];//guarda el vector b
int llenadoMatriz = 1; // 1 es llenado random, 2 es por conteo
int llenadoVector = 2;
int[][] AmultB = new int[tamaño][tamaño];
float[] VxM = new float[tamaño];//guarda el rpoducto entre matriz y vector
float puntoVV;//guarda producto punto
int[][] transpA = new int[tamaño][tamaño];//matriz a transpuesta
int[][] transpB = new int[tamaño][tamaño];//matriz b transpuesta
float[][] inversaA;//guarda la inversa de A
float[][] inversaB;//guarda la inversa de B

void setup() { //en setup unicamente se imprimen los mensajes en consola y llama a todas las funciones para imprimirlas.
  size(400, 400);
  println("Matriz A:");
  llenarMatriz(matrizA, llenadoMatriz);//llama a la funcion para llenar e imprimir las matrices(A)
  imprimirMatriz(matrizA);

  println("Matriz B:");
  llenarMatriz(matrizB, llenadoMatriz);//llama la funcion para llenar e imprimir la funcion (B)
  imprimirMatriz(matrizB);

  // llenar vectores
  println("Vector A:");
  llenarVector(vectorA, llenadoVector);//llama a las funciones para llenar e imprimir el vector (A)
  imprimirVector(vectorA);

  println("Vector B:");
  llenarVector(vectorB, llenadoVector);//llama a las funciones para llenar e imprimir el vector (B)
  imprimirVector(vectorB);

  // llama e imprime producto de matrices
  println("Producto matricial AxB:");
  productoMatrices(matrizA, matrizB);
  imprimirProductoMatrices(AmultB);

  // llama e imprime producto vector x matriz
  println("Producto VxM:");
  productoVectorMatriz(vectorA, matrizA);

  // llama e imprime producto punto
  println("Producto punto VAxVB:");
  productoPunto(vectorA, vectorB);

  // llama e imprime  las transpuestas
  println("Transpuesta de A:");
  transponerMatriz(matrizA, transpA);
  imprimirMatriz(transpA);

  println("Transpuesta de B:");
  transponerMatriz(matrizB, transpB);
  imprimirMatriz(transpB);

  // llama e imprime las inversas o en su defecto imprime que no es invertible
  println("Inversa de A:");
  inversaA = invertirMatriz(matrizA);
  if (inversaA != null) {
    imprimirMatrizFloat(inversaA);
  } else {
    println("No es invertible (determinante = 0)");
  }

  println("Inversa de B:");
  inversaB = invertirMatriz(matrizB);
  if (inversaB != null) {
    imprimirMatrizFloat(inversaB);
  } else {
    println("No es invertible (determinante = 0)");
  }
}

void draw() {
  background(0, 0, 0);
  fill(255, 0, 0);               //mensaje en pantallita que dice "en consola :)"
  text("en consola :)", 170, 50);
}
