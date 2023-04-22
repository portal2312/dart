void main() {
  var one = 0;
  one = 1;
  var two = 'string';
  // two = 2;  // Type Error.
  String three = 'three';
  var four;
  dynamic five;
  five = 'five';
  five = 5;
  if (five is String) {
    print(five.length);
  }
}
