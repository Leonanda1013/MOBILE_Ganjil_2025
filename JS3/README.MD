# Laporan Praktikum

## Identitas
- **Mata Kuliah**: Pemrograman Mobile
- **Program Studi**: Teknik Informatika
- **Semester**: 5
- **Nama**: Vincentius Leonanda Prabowo
- **NIM**: 2341720149
- **Kelas**: TI-3D

---
## Praktikum-1

1. 
```dart
String test = "test2";
if (test == "test1") {
   print("Test1");
} else If (test == "test2") {
   print("Test2");
} Else {
   print("Something else");
}

if (test == "test2") print("Test2 again");
```
2. **Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!**<br>
    **Jawab:** ***Terjadi eror, karena penulisan if else yang salah. Saat menggunakan dart if/else harus menggunakan huruf kecil***

3. 
```dart
String test = "true";
if (test) {
   print("Kebenaran");
}
```

4. **Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan if/else.** <br>
    **Jawab :** ***Terjadi eror, karena tidak ada pembandingnya***<br>

**Pembetulan**
```dart
String test = "true";
if (test == "true") {
   print("Kebenaran");
}
```

## Praktikum-2
1. 
```dart
while (counter < 33) {
  print(counter);
  counter++;
}
```

2. **Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.**<br>
**Jawab :** ***Terjadi eror, karena tidak ada variable counter***
```dart
int counter = 1;
while (counter < 33) {
  print(counter);
  counter++;
}
```

3. **Tambahkan**
```dart
do {
  print(counter);
  counter++;
} while (counter < 77);
```

**Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan do-while**<br>
**Jawab** ***Tidak terjadi eror, terjadi perhitungan 1 hingga 76***





