
void main(){

final valorNormal = suma();
print(valorNormal);

final valorLamda= sumaLamda();
print(valorLamda);

print(sumaArgumentos(1,2));

}

///funcion normal

double suma(){
  return 1+2.4;
}

///funcion lamda
///
double sumaLamda()=>1+2.4;

///Argumnetos
///
double sumaArgumentos(int valor1, int valor2)=>(valor1 + valor2 ).toDouble();