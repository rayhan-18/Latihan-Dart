# Latihan Dasar Dart

Repository ini berisi latihan **Dasar Dart** untuk mata kuliah **KB1185 – Aplikasi Mobile, Pertemuan 2**.

Materi latihan dibuat berdasarkan pembahasan pada **halaman 5–16**, mulai dari explicit typing, null safety, tipe data Dart, collection, object, dynamic, hingga immutability.

## 📚 Materi yang Dipelajari

### 1. Explicit Typing

Mempelajari penggunaan tipe data secara langsung pada variabel, seperti:

* `String`
* `int`
* `double`
* `bool`
* `DateTime`

Contoh:

dart
String namaProduk = 'Smartphone';
int jumlahProduk = 8;
double hargaProduk = 3250000.0;
bool produkTersedia = true;


Explicit typing membantu menentukan tipe data sebuah variabel sejak awal.

---

### 2. Null Safety

Dart menggunakan **sound null safety**, sehingga variabel secara default tidak dapat berisi `null`.

Untuk membuat variabel yang dapat memiliki nilai `null`, digunakan tanda `?`.

dart
String? catatanPembeli;
catatanPembeli = null;


Operator yang dipelajari:

* `?` → membuat tipe data nullable
* `!` → memberi tahu Dart bahwa nilai tidak `null`
* `?.` → mengakses nilai jika tidak `null`
* `??` → memberikan nilai alternatif jika nilai `null`

---

### 3. Variabel `final`, `const`, dan `late`

#### `final`

Digunakan untuk nilai yang hanya dapat diberikan satu kali.

dart
final DateTime waktuTransaksi = DateTime.now();


#### `const`

Digunakan untuk nilai yang bersifat konstan dan sudah diketahui saat proses kompilasi.

dart
const double biayaAdmin = 2500.0;


#### `late`

Digunakan ketika variabel akan diberikan nilainya nanti, tetapi tetap ingin menggunakan tipe data yang jelas.

dart
late String kodePesanan;
kodePesanan = 'PSN-001';


---

## 🔤 4. Tipe Data Dart

### String

Digunakan untuk menyimpan data berupa teks.

dart
String nama = 'Rayhan';
String kota = 'Tangerang';


Dart juga mendukung **String interpolation** menggunakan `$`.

dart
print('Nama saya $nama');


### int

Digunakan untuk bilangan bulat.

dart
int umur = 21;
int jumlahBarang = 7;


### double

Digunakan untuk angka yang memiliki nilai desimal.

dart
double hargaProduk = 12500.50;
double ratingProduk = 4.7;


### num

`num` dapat digunakan untuk menyimpan bilangan bulat maupun desimal.

dart
num nilaiBarang = 15000;

nilaiBarang = 15000.75;


### bool

Digunakan untuk nilai logika yang hanya memiliki dua kemungkinan:

* `true`
* `false`

Contoh:

dart
bool sudahBayar = true;
bool pesananDikirim = false;


---

## 📦 5. Collection

### List

`List` digunakan untuk menyimpan beberapa data dalam satu variabel dan memiliki urutan berdasarkan index.

dart
List<String> daftarBuah = [
  'Apel',
  'Mangga',
  'Jeruk',
];

print(daftarBuah[0]);


Menambahkan data dapat menggunakan `.add()`.

dart
daftarBuah.add('Pisang');


### ListView.builder

Pada Flutter, `ListView.builder` dapat digunakan untuk menampilkan data `List` ke dalam tampilan aplikasi.

dart
ListView.builder(
  itemCount: daftarBarang.length,
  itemBuilder: (context, index) {
    return ListTile(
      title: Text(daftarBarang[index]),
    );
  },
);


### Set

`Set` digunakan untuk menyimpan data yang tidak memiliki duplikat.

dart
Set<String> warna = {
  'Merah',
  'Biru',
  'Merah',
  'Hijau',
};

print(warna);


Data `Merah` hanya akan tersimpan satu kali.

### Map

`Map` digunakan untuk menyimpan data dalam bentuk **key-value**.

dart
Map<String, dynamic> pelanggan = {
  'nama': 'Rayhan',
  'umur': 21,
  'aktif': true,
};

print(pelanggan['nama']);


Map juga banyak digunakan untuk merepresentasikan data seperti **JSON** dan data dari API.

---

## 🧩 6. Object dan Dynamic

### Object

`Object` dapat digunakan untuk menyimpan berbagai jenis nilai.

dart
Object data = 'Flutter';

data = 25;
data = true;


Jika ingin menggunakan method berdasarkan tipe datanya, tipe dapat diperiksa menggunakan `is`.

dart
if (data is String) {
  print(data.toUpperCase());
}


### Dynamic

`dynamic` memungkinkan sebuah variabel menyimpan nilai dengan tipe yang dapat berubah.

dart
dynamic data = 'Flutter';

data = 100;
data = false;


Penggunaan `dynamic` perlu diperhatikan karena kesalahan tipe dapat baru diketahui saat program dijalankan.

Contohnya:

dart
dynamic data = 500;

print(data.toUpperCase());


Kode tersebut dapat menyebabkan **runtime error** karena nilai `data` merupakan `int`, sedangkan `toUpperCase()` merupakan method untuk `String`.

---

## 🔒 7. Immutability

Immutability berarti nilai suatu objek tidak dapat diubah setelah objek tersebut dibuat.

Dart mendukung immutability melalui penggunaan:

* `final`
* `const`
* `final` fields
* `const constructor`

Contoh:

dart
class Produk {
  final String nama;
  final double harga;

  const Produk({
    required this.nama,
    required this.harga,
  });

  String informasi() {
    return '$nama - Rp${harga.toStringAsFixed(0)}';
  }
}

void main() {
  const Produk produk = Produk(
    nama: 'Keyboard',
    harga: 450000,
  );

  print(produk.informasi());
}


Dengan menggunakan `final` pada property dan `const constructor`, objek `Produk` dapat dibuat sebagai objek immutable.

---

## 📁 Struktur Latihan

Struktur file latihan dapat disusun seperti berikut:

text
latihan-dart/
│
├── explicit_typing.dart
├── null_safety.dart
├── null_operator.dart
├── null_assertion.dart
├── null_aware.dart
├── final.dart
├── const.dart
├── late.dart
├── string.dart
├── string_interpolation.dart
├── int.dart
├── double.dart
├── num.dart
├── bool.dart
├── list.dart
├── list_add.dart
├── listview_builder.dart
├── set.dart
├── set_add.dart
├── map.dart
├── map_product.dart
├── map_api.dart
├── object.dart
├── object_is.dart
├── dynamic.dart
├── dynamic_error.dart
├── final_const_late.dart
├── immutable.dart
│
└── README.md


> Nama file dapat disesuaikan dengan struktur folder latihan yang digunakan.

---

## ▶️ Cara Menjalankan Program

Pastikan Dart atau Flutter sudah terinstall.

Cek versi Dart:

bash
dart --version


Cek versi Flutter:

bash
flutter --version


Untuk menjalankan file Dart:

bash
dart run nama_file.dart


Contoh:

bash
dart run explicit_typing.dart


Untuk project Flutter:

bash
flutter run


---

## 🛠️ Tools yang Digunakan

* **Dart**
* **Flutter**
* **Visual Studio Code / Android Studio**
* **Git**
* **GitHub**

---

## 🎯 Tujuan Latihan

Latihan ini bertujuan untuk memahami dasar-dasar bahasa Dart yang digunakan dalam pengembangan aplikasi Flutter, terutama:

* Memahami penggunaan tipe data Dart.
* Memahami explicit typing dan null safety.
* Memahami penggunaan `final`, `const`, dan `late`.
* Memahami penggunaan `String`, `int`, `double`, `num`, dan `bool`.
* Memahami collection seperti `List`, `Set`, dan `Map`.
* Memahami konsep `Object` dan `dynamic`.
* Memahami konsep immutability pada Dart.
* Menerapkan dasar Dart sebagai persiapan untuk membuat aplikasi menggunakan Flutter.

---

## 📖 Referensi

* **Mata Kuliah:** KB1185 – Aplikasi Mobile
* **Materi:** Pertemuan 2 – Dasar Dart
* **Institusi:** Institut Teknologi & Bisnis Bina Sarana Global
* **Materi:** Halaman 5–16

---

## 👨‍💻 Author

**Muhamad Rayhan**

Latihan Dasar Dart – KB1185 Aplikasi Mobile
