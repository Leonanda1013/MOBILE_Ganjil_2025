void main() {
  var listOfInts = [1, 2, 3];

  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];

  // Mengecek apakah elemen kedua sesuai
  assert(listOfStrings[1] == '#1');

  print(listOfStrings);
}
