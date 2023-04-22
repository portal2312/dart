void main() {
  var one = 'one';
  print(one);
  String two = 'two';
  print(two);
  dynamic three;
  three = 'three';
  three = 3;
  three = true;
  print(three);
  String? four = 'four';
  four = null;
  print(four?.isEmpty);
  final five = 'five';
  // five = 5;  // Error: does not change.
  print(five);
  late final six;
  // print(six); // Error: definitely unassigned.
  six = 'six';
  print(six);
  var seven = const [];
  seven = ['seven'];
  print(seven);
  const eight = ['eight']; // Is compile-time constant.
  // eight = [8]; // Error: does not change.
  print(eight);
}
