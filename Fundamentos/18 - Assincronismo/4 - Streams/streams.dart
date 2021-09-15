/*
* Conceito:
>> Stream é uma forma de monitorar eventos. Ao adicionar eventos na stream os ouvintes serão monitorados;
>> As streams fornecem uma sequência assíncrona de dados. Para processar uma stream  await() ou listen();
>> Existem dois tipos de stream: assinatura única(subscription) ou tranmissão(broadcast);
>> Stream é uma sequencia com vários Futures: Ao invez de obter um evento solicitado(Future), a stream informa que há um evento quando está pronto;

* stream
- Fluxo que a classe StreamController() está gerenciando

* add()
- Adiciona eventos na stream notificando os ouvintes que estão monitorando;

*listen()
- Inscreve um ouvinte na stream para aguardar notificações de eventos.
>> onData: Notifica o assistente com eventos de dados de stream, se for nulo, nada acontece;
>> onError: Tratamento de eventos com erro e possível rastreamento Stack Trace. Se omitido erros serão considerados exceptions;
>> onDone: Evento chamado quando a stream é fechada
>> cancelOnError: A assinatura é cancelada automaticamente ao receber um erro;
*/

import 'dart:async';

conceito() {
  print('Stream Conceito\n');

  var lista = <dynamic>[];
  //1 controlador
  var controlador = StreamController<dynamic>();

  //2 stream
  var stream = controlador.stream;

  //3 Inscrição de ouvintes na stream
  stream.listen((onData){
    print('evento: $onData');
    lista.add(onData);
  }, onDone: () {
    print('Stream finalizada');
    print(lista);
  });

  //4 adicionar um evento a stream
  controlador.sink.add('Vinícius');
  controlador.sink.add(26);
  controlador.sink.add(1.79);
  controlador.sink.add(!false);
  controlador.close();

  print('Monitorando..');
}

///
/// * MODEL
///
///
class Contador{
  var _contagem = 1, termino, erro;
  final _controlador = StreamController<int>();

  Sink<int> get sink => _controlador.sink; // não expor o controlador, exponha as interfaces
  Stream<int> get stream => _controlador.stream;

  Contador({this.termino = 5, this.erro = 3}){
   Timer.periodic(Duration(seconds: 1), (Timer timer){
    _contagem < termino ? sink.add(_contagem) : sink.close();
    _contagem++;
    if(_contagem == erro) _controlador.addError('Erro intencional');
    if(_contagem > termino) timer.cancel();
   }); 
  }
}

model() {
  print('Stream model');

  // stream
  var minhaStream = Contador(termino: 5, erro: 3).stream.asBroadcastStream();

  //inscrição ouvintes na stream
  final inscrito1 = minhaStream.listen((onData){
    print('Inscrito1: $onData');
  }, onError: (erro){
    print('Inscrito1: $erro');
  }, cancelOnError: false, onDone: (){
    print('Inscrito1: Completo');
  },
  );

  var pares = (e) => e % 2 == 0;
  var mapear = (e) => '$e é par';

  // modificar eventos
  final inscrito2 = minhaStream.where(pares).map(mapear).listen(
    (onData) {
      print('Inscrito2: $onData');
    },
    onError: (erro) {
      print('Inscrito2: $erro');
    },
    cancelOnError: false,
    onDone: () {
      print('Inscrito2: Completo');
    },
  );

  // gerenciar inscritos
  for(var i = 1; i <= 3; i++) {
    Future.delayed(Duration(seconds: i), (){
      if(i == 1) inscrito1.pause();
      if (i == 2) inscrito1.resume();
      if (i == 3) inscrito1.cancel();
    });
  }
}

///
/// * METODOS
///

metodos() async {
  print('Metodos e Ouvintes\n');

  var stream = Stream<dynamic>.periodic(Duration(seconds: 1), (e)=> e+1).take(5).asBroadcastStream();
  stream = stream.takeWhile((e)=> e <= 5).skipWhile((e)=> e > 3).take(3).map((e)=> e.toString().padLeft(2,'0'));
  // ouvintes
  stream.listen((onData){
    print('Listen: $onData');
  }, onDone: (){
    print('Contagem finalizada!');
  });

  //stream.forEach((e)=> print('ForEach: $e'));

  //await for(dynamic evento in stream )  {
  //  print('ForIn: $evento');
  //}

  //List<dynamic> eventos = await stream.toList();
  //print(eventos);

  Future<List<dynamic>> eventosFuturos = stream.toList();
  print(await  eventosFuturos);
}
main() {
  //conceito();
  //model();
  metodos();
}