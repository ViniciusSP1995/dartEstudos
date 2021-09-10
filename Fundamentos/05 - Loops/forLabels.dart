void main() {

  print('For Labels\n\n');

  for(var i = 0; i < 2; i++) {
    //indice recebe 0
    for(var j = i; j < 2; j++) {
      //j recebe 0
      for(var k = j; k < 2; k++) {
        //k recebe 0
        print("i: $i, j: $j, k: $k");
      }
    }
  }

print('For com break e rótulos');

// o break encerra o loop e o indice zera
loopExterno:

for(var i = 0; i < 3; i++) {
  //i = 0
  print('loopExterno: i: $i');

  loopInterno:

  for(var j = 0; j <= 3; j++) {
    //j = 0
    print('loopIntenrno: i: $i, j: $j');
    if(j < 2) break;
    if(i == 1) break loopInterno;
    if(i == 2) break loopExterno;
    print('loopCompleto:');

  }
}

print('For com continue e rótulos (labels)');

loopExterno:
for(int i = 1; i <= 2; i++) {
  // i = 1
  print('loopExterno: i: $i');

  loopInterno:
  for(int j = 1; j <=3; j++) {
    //j = 0
    print('loopInterno: i: $i j: $j');
    if(i == 1 && j == 1) continue loopInterno;
    if(i == 2 && j == 2) continue loopExterno;
    print('Loop Completo');
  }
}


}