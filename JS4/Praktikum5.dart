void main() {
  var mahasiswa2 = ('Vinentius', a: 2341720149, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'Vinentius'
  print(mahasiswa2.a);  // Prints 2341720149
  print(mahasiswa2.b);  // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}