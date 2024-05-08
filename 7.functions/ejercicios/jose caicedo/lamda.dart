void main(){

final valorNormal = suma();
print(valorNormal);

final valorLamda= sumaLamda();
print(valorLamda);


}

///funcion normal

double suma(){
  return 1+2.4;
}

///funcion lamda
///
double sumaLamda()=>1+2.4;