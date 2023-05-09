void main() {
  var oldFriends = ['A', 'B'];
  var newFriends = [
    for (var friend in oldFriends) "😀 $friend",
    'C',
    'D',
    'E',
  ];
  print(newFriends);
}
