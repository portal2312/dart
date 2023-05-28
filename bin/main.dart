typedef ListInt = List<int>;

ListInt reverseListOfNumber(ListInt data) {
  return data.reversed.toList();
}

void main() {
  print(reverseListOfNumber([1, 2, 3]));
}
