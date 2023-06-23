class Player {
  final String name;
  int xp;

  Player(this.name, this.xp);

  void sayHello() {
    print('Hi, my name is $name.');
  }
}

void main() {
  var player1 = Player('player1', 1500);
  player1.sayHello();
  var player2 = Player('player2', 2500);
  player2.sayHello();
}
