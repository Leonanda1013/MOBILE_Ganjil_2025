# Laporan Praktikum

## Identitas
- **Mata Kuliah**: Pemrograman Mobile
- **Program Studi**: Teknik Informatika
- **Semester**: 5
- **Nama**: Vincentius Leonanda Prabowo
- **NIM**: 2341720149
- **Kelas**: TI-3D

---

## Praktikum 1
1. 
```dart
var list = [1, 2, 3];
assert(list.length == 3);
assert(list[1] == 2);
print(list.length);
print(list[1]);

list[1] = 1;
assert(list[1] == 1);
print(list[1]);
```
2. **Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!**<br>
**Jawab :** ***Akan memunculkan angka 3 2 ... 3 artinya panjang listnya 3, 2 artinya list[1] berisi 2, dan 1 artinya list[1] yang sudah diedit berisi 1***

3. **Ubah kode pada langkah 1 menjadi variabel final yang mempunyai index = 5 dengan default value = null. Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2. Lalu print dan capture hasilnya.**
```dart
  final List<dynamic> list = List.filled(5, null);
  //variable final dan list dinamis agar fleksibel bisa int string dst
  
  list[1] = "Vincentius Leonanda Prabowo"; 

  
  list[2] = "2341720149"; 

 
  print(list);
  print("Index ke-1 (Nama): ${list[1]}");
  print("Index ke-2 (NIM): ${list[2]}");
```

## Praktikum 2

1. 
```dart
var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
print(halogens);
```
2. **Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.** <br>
**Jawab :** ***Semua yang ada pada array halogens akan ditampilkan ***

3. 
```dart
var names1 = <String>{};
Set<String> names2 = {}; // This works, too.
var names3 = {}; // Creates a map, not a set.

print(names1);
print(names2);
print(names3);
```
**Jawab : alogens adalah sebuah Set berisi lima elemen string, sedangkan names1 dan names2 sama-sama Set<String> kosong, dan names3 adalah Map<dynamic, dynamic> kosong karena {} tanpa anotasi dianggap map, bukan set; meskipun saat dicetak semuanya terlihat {}, tipe data mereka sebenarnya berbeda.**

4. **Tambahkan elemen nama dan NIM Anda pada kedua variabel Set tersebut dengan dua fungsi berbeda yaitu .add() dan .addAll(). Untuk variabel Map dihapus, nanti kita coba di praktikum selanjutnya.**
```dart
var names1 = <String>{};
Set<String> names2 = {}; // This works, too.
var names3 = {}; // Creates a map, not a set.
 // Menambahkan data ke Set dengan .add()
  names1.add("Vincentius Leonanda Prabowo"); 
  names1.add("2341720149 coba beda"); 


  names2.addAll({"Vincentius Leonanda Prabowo", "2341720149"});
print(names1);
print(names2);
print(names3);
```
## Praktikum 3
1. 
```dart
var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 1
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 2,
};

print(gifts);
print(nobleGases);
```
2. **Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.** <br>
**Jawab :** ***Program akan menampilkan array dari gifts dan nobleGases ***

3. 
```dart
var mhs1 = Map<String, String>();
gifts['first'] = 'partridge';
gifts['second'] = 'turtledoves';
gifts['fifth'] = 'golden rings';

var mhs2 = Map<int, String>();
nobleGases[2] = 'helium';
nobleGases[10] = 'neon';
nobleGases[18] = 'argon';
```

**Pembetulan**
```dart
void main() {
  // Map dengan key bertipe String
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  // Map dengan key bertipe int
  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  // Map kosong bertipe String -> String
  var mhs1 = Map<String, String>();
  mhs1['name'] = 'Vincentius Leonanda Prabowo';
  mhs1['nim'] = '2341720149';

  // Map kosong bertipe int -> String
  var mhs2 = Map<int, String>();
  mhs2[1] = 'Vincentius Leonanda Prabowo';
  mhs2[2] = '2341720149';

  // Tambahkan nama & NIM juga ke gifts dan nobleGases
  gifts['name'] = 'Vincentius Leonanda Prabowo';
  gifts['nim'] = '2341720149';

  nobleGases[99] = 'Vincentius Leonanda Prabowo';
  nobleGases[100] = '2341720149';

  // Cetak hasilnya
  print('gifts: $gifts');
  print('nobleGases: $nobleGases');
  print('mhs1: $mhs1');
  print('mhs2: $mhs2');
}
```





