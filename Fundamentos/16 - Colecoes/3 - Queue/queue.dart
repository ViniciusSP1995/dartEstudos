import 'dart:collection';

///
/// * Queue é uma coleção ordenada entre chaves{}, sem index, que manipula o inicio e o ifm da lista!
///
queue() {
  print('Queue\n');

  Queue<int?> queue = Queue(); //import 'dart: collection';
  print('Impelementação: ${queue.runtimeType}'); //ListQueue<int>
  queue.addAll([20,30]);
  queue.add(40);
  queue.addFirst(10);
  queue.addLast(50);
  queue.add(60);
  queue.add(null);
  queue.removeLast();
  queue.forEach((e)=> print(e));
}

main() {
  queue();
}
