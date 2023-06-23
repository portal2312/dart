class Player {
  final String name;
  int age, xp;
  String team;

  Player({
    required this.name,
    required this.age,
    required this.xp,
    required this.team,
  });

  Player.createBluePlayer({required String name, required int age})
      : this.name = name,
        this.age = age,
        this.team = 'blue',
        this.xp = 0;

  Player.createRedPlayer(String name, int age)
      : this.name = name,
        this.age = age,
        this.team = 'red',
        this.xp = 0;

  void sayHello() {
    print('Hi, my name is $name.');
  }
}

void main() {
  var bluePlayer = Player.createBluePlayer(name: 'blue', age: 12);
  bluePlayer.sayHello();
  var redPlayer = Player.createRedPlayer('red', 24);
  redPlayer.sayHello();
}
