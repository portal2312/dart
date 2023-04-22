void main() {
  late final String one;
  // print(one);  // Error: The late local variable 'one' is definitely unassigned at this point.
  one = 'one';
  print(one);
}
