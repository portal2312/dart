void main() {
  var numbers = [1, 2, 3, 4];
  print(numbers);
  List<int> numbers2 = [1, 2, 3, 4];
  numbers2.add(5);
  print(numbers2);
  var numbers3 = [
    1,
    2,
    3,
    4,
    5,
  ];
  print(numbers3);
  var giveMeFive = true;
  var numbers4 = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5, // collection if.
  ];
  print(numbers4);
}
