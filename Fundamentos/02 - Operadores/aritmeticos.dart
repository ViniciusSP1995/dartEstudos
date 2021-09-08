void main() {
  print("(Operadores aritméticos + - * / ~ / % ), incremento +=, ++ e assignação (= ??)\n");

  var peso = 10;
  peso + 5; // 15
  peso += 5; // 20
  peso++; // incrementa de um em um
  print(peso);

  var a,b,c,d,e,f;

  a = 3;
  b = ++a; //incrementa a antes que b receba o valor
  print("a: $a, b: $b");

  c = ++a / --b;

  print("a: $a, b: $b");

  print("c: $c");

  d = a ~/b; //a divisão um número inteiro

  print('c: $c, d: $d');

 var valorA = 9, valorB = 2;

 print("exemplo: 9 ~/2 será ${valorA~/valorB}");


e = 1;
f = e;
f = null;

f ??= ++e; // f recebe o incremento se for nulo
print("e: $e, f: $f");

var x,y,z;
z = 1;
x = y ?? z;
print("x: $x y: ${y}"); //x recebe o valor de y, a menos que y seja nulo, então x recebe o z;


var nome = null;

print("nome: ${nome ?? 'Vinícius'}\n"); // se a variável for nula, recebe o valor String;

var numero = 12;
var par = (numero % 2 == 0); // mostra o resto da divisão;

var impar = (numero % 2 != 0); 

var positivo = (numero <= 0);

var negativo = (numero < 0);

print("numero: $numero, par: $par, ímpar: $impar, positivo: $positivo, negativo: $negativo");


var multiplo = 3;

print("numero: $numero é múltiplo de $multiplo = ${(numero % multiplo == 0)}");

int dividendo = 19, divisor = 4;
double quociente = dividendo/divisor;

int resto = (dividendo % divisor); //mostra o resto da divisão
bool exata = resto == 0;

print("Quociente: $quociente, Resto: $resto, Exata: $exata");
}