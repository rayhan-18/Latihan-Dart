# Dart Basic Materi

Program ini merupakan latihan dasar **Dart** yang menggabungkan beberapa materi fundamental Dart ke dalam satu file `main.dart`.

Program dibuat untuk mempraktikkan penggunaan tipe data, null safety, operator, collection, object, dynamic, serta immutable class.

## 📁 Struktur File

```text
project/
└── main.dart
```

## 📚 Materi yang Digunakan

### 1. Tipe Data Dasar & Explicit Typing

Program menggunakan beberapa tipe data dasar Dart:

* `String`
* `int`
* `double`
* `bool`
* `num`

Contoh:

```dart
String nama = 'Rayhan';
int umur = 19;
double harga = 3250000.0;
bool aktif = true;
num nilai = 15000;
```

### 2. String Interpolation

Digunakan untuk memasukkan nilai variabel langsung ke dalam `String`.

```dart
print('Nama: $nama, Umur: $umur');
```

### 3. Null Safety, Operator & Access

Program menggunakan nullable variable dengan `String?`, null-aware operator `??`, dan null-aware access `?.`.

```dart
String? catatan;

print(catatan ?? 'Tidak ada catatan');
print(catatan?.toUpperCase());
```

Nilai `catatan` dibuat secara dinamis berdasarkan detik saat program dijalankan.

### 4. Final, Const & Late

Program juga menggunakan:

* `final` untuk nilai yang ditentukan saat runtime.
* `const` untuk nilai konstan.
* `late` untuk variabel yang diinisialisasi kemudian.

```dart
final DateTime waktu = DateTime.now();
const double pajak = 0.11;
late String pesanan;
```

### 5. Collection

Program menggunakan tiga jenis collection utama Dart:

#### List

Menyimpan data secara berurutan dan dapat memiliki nilai duplikat.

```dart
List<String> buah = ['Apel', 'Mangga'];
buah.add('Jeruk');
```

#### Set

Menyimpan data yang harus unik.

```dart
Set<String> warna = {'Merah', 'Biru'};
warna.add('Merah');
```

Penambahan `Merah` kedua tidak menghasilkan data duplikat.

#### Map

Menyimpan data dalam bentuk **key-value**.

```dart
Map<String, dynamic> user = {
  'username': 'rayhan01',
  'aktif': true
};
```

### 6. Object & Dynamic

Program menggunakan `Object` untuk menyimpan data dan melakukan pengecekan tipe menggunakan operator `is`.

```dart
Object dataObj = 'Flutter';

if (dataObj is String) {
  print(dataObj.toUpperCase());
}
```

Selain itu, `dynamic` digunakan untuk data yang dapat berubah tipe.

```dart
dynamic dataDyn = 100;
dataDyn = 'Bebas ganti tipe tanpa error';
```

### 7. Immutable Class

Program memiliki class `Produk` yang menggunakan `final` dan `const constructor`.

```dart
class Produk {
  final String nama;
  final double harga;

  const Produk({
    required this.nama,
    required this.harga
  });

  String informasi() => '$nama - Rp${harga.toStringAsFixed(0)}';
}
```

Object dibuat menggunakan:

```dart
const Produk produk = Produk(
  nama: 'Keyboard',
  harga: 450000
);
```

Kemudian informasi produk ditampilkan dengan:

```dart
print(produk.informasi());
```

## ▶️ Cara Menjalankan

Pastikan Dart SDK atau Flutter sudah terpasang.

Jalankan melalui terminal:

```bash
dart run main.dart
```

Jika menggunakan project Flutter:

```bash
flutter run
```

## 🖥️ Contoh Output

Output dapat berbeda pada bagian `catatan` karena nilainya bergantung pada waktu program dijalankan.

```text
Nama: Rayhan, Umur: 19
Harga: 3250000.0, Aktif: true, Nilai: 15000.5
Tidak ada catatan
Waktu: 2026-..., Pajak: 0.11, Pesanan: PSN-001
Daftar Buah: [Apel, Mangga, Jeruk]
Daftar Warna: {Merah, Biru}
Data User: {username: rayhan01, aktif: true}
FLUTTER
Dynamic Data: Bebas ganti tipe tanpa error
Keyboard - Rp450000
```

## 🎯 Tujuan

Program ini dibuat sebagai latihan untuk memahami dasar-dasar bahasa pemrograman **Dart**, khususnya:

* Tipe data
* String interpolation
* Null safety
* Operator `??` dan `?.`
* `final`, `const`, dan `late`
* List, Set, dan Map
* Object dan `dynamic`
* Class dan object
* Immutable class
* Constructor
* Method

## 👨‍💻 Author

**Rayhan**

Project latihan Dart dasar.
