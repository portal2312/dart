String sayHello({
  String name = 'anonymous',
  required int age,
  required String country,
}) {
  return "Hello $name, you are $age, and you come from $country.";
}

void main() {
  print(sayHello(
    age: 30,
    country: 'Korea, seoul',
  ));
}
