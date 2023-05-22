void echo(String message) {
  print(message);
}

String sayHello(String name) {
  var message = "Hello $name nice to meet you!";
  // print(message);
  return message;
}

// This is good example for fat arrow function:
num plus(num a, num b) => a + b;

void main() {
  echo('Oh!');
  print(sayHello('everyone'));
  print(plus(1, 2));
}
