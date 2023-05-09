void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);
  var names = <String>{};
  print(names);
  Set<String> names2 = {}; // This works, too.
  print(names2);
  var names3 = {}; // Creates a map, not a set.
  if (names3 is Set) {
    print('Is Set.');
  } else if (names3 is Map) {
    print('Is Map.');
  } else {
    print('Is Unknown.');
  }
  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);
  print(elements);
  assert(elements.length == 5);
  final constantSet = const {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
  };
  // constantSet.add('helium'); // This line will cause an error.
  print(constantSet);
}
