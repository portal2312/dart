String capitalizeName(String? name) => name?.toLowerCase() ?? 'anonymous';

void main() {
  print(capitalizeName('june'));
  print(capitalizeName(null));

  String? name;
  name ??= 'jake';
  name ??= 'june'; // Does not working.
  name = null;
  name ??= 'sam';
  print(name);
}
