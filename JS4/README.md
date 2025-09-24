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


## Praktikum 4
1. 
```dart
void main() {
  var list1 = [1, 2, 3];
  var list2 = [0, ...list1];
  print(list1);
  print(list2);
  print(list2.length);
}

```
2. Operator ...list1 menyebarkan (spread) isi dari list1 ke dalam list2.
3. 
```dart
void main() {
  var list1 = [1, 2, null];
  print(list1);

  var list3 = [0, ...?list1];
  print(list3);
  print(list3.length);
}

```
...?list1 artinya: kalau list1 tidak null, maka isinya di-spread. Kalau list1 = null, maka tidak ada error dan list3 tetap [0].

4. 
```dart
void main() {
  var promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  promoActive = false;
  nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);
}
```
Collection if memungkinkan kita menambahkan elemen ke list hanya jika kondisi promoActive bernilai true.

5.
```dart
void main() {
  var login = 'Manager';

  var nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  print(nav2);

  login = 'User';
  nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  print(nav2);
}
```
Collection if juga bisa digunakan untuk menambahkan elemen tertentu (misalnya 'Inventory') hanya jika kondisi login sesuai (contohnya 'Manager').

6. 
```dart
void main() {
  var listOfInts = [1, 2, 3];

  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];

  // Mengecek apakah elemen kedua sesuai
  assert(listOfStrings[1] == '#1');

  print(listOfStrings);
}
```
Collection for digunakan untuk membangkitkan elemen list baru secara dinamis dari list lain dengan sintaks lebih ringkas.



## Praktikum 5
1. 
```dart 
void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);
}
```
Record di Dart bisa berisi positional fields ('first', 'last') dan named fields (a: 2, b: true). Kode ini langsung jalan tanpa error.

3. 
```dart
 // Fungsi tukar untuk menukar isi record
(int, int) tukar((int, int) record) {
  var (a, b) = record; // destruktur record
  return (b, a);       // return record baru dengan posisi terbalik
}

void main() {
  var angka = (10, 20);
  print("Sebelum tukar: $angka");
  var hasil = tukar(angka);
  print("Sesudah tukar: $hasil");
}
```
Fungsi tukar() menerima record (int, int) lalu mengembalikannya dengan posisi elemen ditukar.

4. 
```dart
void main() {
  (String, int) mahasiswa;
  // print(mahasiswa); // ❌ ERROR: variabel belum diinisialisasi

  // ✔️ Perbaikan: langsung beri nilai
  mahasiswa = ('Vinentius', 2341720149);
  print(mahasiswa);
}
```
Record (String, int) digunakan untuk menyimpan nama dan NIM. Jika tidak diinisialisasi akan error, jadi harus langsung diberi nilai.

5. 
```dart
void main() {
  var mahasiswa2 = ('Vinentius', a: 2341720149, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'Vinentius'
  print(mahasiswa2.a);  // Prints 2341720149
  print(mahasiswa2.b);  // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}
```
>$1, $2 digunakan untuk mengakses positional fields.
>a, b digunakan untuk mengakses named fields.
>Record fleksibel: bisa memuat gabungan field positional & named sekaligus.