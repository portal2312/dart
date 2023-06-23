class Player {
  final String name = 'player-1';
  int xp = 1500;

  void sayHello() {
    print('Hi, my name is $name.');
  }
}

void main() {
  var player = Player();
  // player.name = 'a';  // Does not working.
  player.sayHello();
}
