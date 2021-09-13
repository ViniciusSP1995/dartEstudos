abstract class Animal {
  String? idade;
  bool docil = false;
  bool coluna = false;

  Animal.vertebrados(this.idade, {this.docil = false}) {
    this.coluna = true;
  }

  Animal.invertebrados(this.idade, {this.docil = false}) {
    this.coluna = false;
  }

  void dormir() {
    print('Dormi como um animal!');
  }
}
