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



