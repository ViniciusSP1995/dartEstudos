import 'dart:convert';

/**
 * *Conceito
 * utf8
 * - Binário que representa qualquer caractere universal
 * 
 * Base64
 * - Codificação de dados para transferência da Internet
 * - https://www.base64encode.org/
 */

main() {
  print('Base64 e Utf8\n');

  String email = 'vds1995sp@gmail.com';

  //ENCODE
  var ebytes = utf8.encode(email);
  String codificado = base64.encode(ebytes);
  print(codificado);

  // DECODE
  var dbytes =  base64.decode(codificado);
  String decodificado = utf8.decode(dbytes);
  print(decodificado);
}