void main() {
  String? one = 'one';
  one = null;
  print(one?.isNotEmpty);
}
