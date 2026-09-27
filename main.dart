void main() {
  // String digunakan untuk menyimpan data berupa teks
  String namaProduk = 'Smartphone';

  // int digunakan untuk menyimpan bilangan bulat
  int jumlahProduk = 8;

  // double digunakan untuk menyimpan angka desimal
  double hargaProduk = 3250000.0;

  // bool digunakan untuk menyimpan nilai true atau false
  bool produkTersedia = true;

  // Nilai jumlahProduk bisa diubah karena variabelnya bukan final
  jumlahProduk = 15;

  // Menampilkan semua nilai ke console
  print(namaProduk);
  print(jumlahProduk);
  print(hargaProduk);
  print(produkTersedia);
}

void main() {
  // String biasa tidak boleh memiliki nilai null
  String namaPembeli = 'Rayhan';

  // Tanda ? berarti variabel boleh memiliki nilai null
  String? catatanPembeli;

  // Memberikan nilai null ke variabel yang nullable
  catatanPembeli = null;

  // Menampilkan nama pembeli
  print(namaPembeli);

  // Menampilkan catatan pembeli
  print(catatanPembeli);
}

void main() {
  // Variabel boleh memiliki nilai null
  String? alamatPembeli;

  // ?? digunakan untuk memberikan nilai cadangan jika alamatPembeli null
  String alamatUntukDitampilkan =
      alamatPembeli ?? 'Alamat belum tersedia';

  // Menampilkan alamat yang digunakan
  print(alamatUntukDitampilkan);
}

void main() {
  // Variabel nullable yang memiliki nilai
  String? namaPengguna = 'Rayhan';

  // ! digunakan untuk memberi tahu Dart bahwa nilai dianggap tidak null
  // toUpperCase() digunakan untuk mengubah teks menjadi huruf kapital
  print(namaPengguna!.toUpperCase());
}

void main() {
  // Variabel String yang boleh memiliki nilai null
  String? namaPengguna = null;

  // ?. digunakan agar method hanya dijalankan jika nilainya tidak null
  print(namaPengguna?.toUpperCase());
}

void main() {
  // final digunakan agar nilai hanya bisa diberikan satu kali
  final String nomorInvoice = 'INV-2026-0088';

  // DateTime.now() mengambil waktu saat program dijalankan
  final DateTime waktuTransaksi = DateTime.now();

  // Menampilkan nomor invoice
  print(nomorInvoice);

  // Menampilkan waktu transaksi
  print(waktuTransaksi);
}

void main() {
  // const digunakan untuk nilai yang bersifat konstan
  const double biayaAdmin = 2500.0;

  // Nilai ini juga sudah ditentukan sebagai nilai konstan
  const String kodeNegara = 'ID';

  // Menampilkan nilai biaya admin
  print(biayaAdmin);

  // Menampilkan kode negara
  print(kodeNegara);
}

// late digunakan ketika nilai variabel akan diberikan nanti
late String kodePesanan;

// Function untuk membuat kode pesanan
void buatPesanan() {
  // Memberikan nilai ke variabel yang sebelumnya hanya dideklarasikan
  kodePesanan = 'PSN-${DateTime.now().millisecondsSinceEpoch}';

  // Menampilkan kode pesanan
  print(kodePesanan);
}

void main() {
  // Memanggil function buatPesanan
  buatPesanan();
}

void main() {
  // String digunakan untuk menyimpan data berupa teks
  String nama = 'Rayhan';

  // Menyimpan nama kota dalam bentuk teks
  String kota = 'Tangerang';

  // toUpperCase() digunakan untuk mengubah teks menjadi huruf kapital
  print(nama.toUpperCase());

  // Menampilkan nama kota
  print(kota);
}

void main() {
  // Menyimpan nama dalam bentuk String
  String nama = 'Rayhan';

  // Menyimpan umur dalam bentuk bilangan bulat
  int umur = 21;

  // $ digunakan untuk memasukkan nilai variabel ke dalam teks
  print('Nama saya $nama, umur saya $umur tahun');
}

void main() {
  // int digunakan untuk menyimpan bilangan bulat
  int umur = 21;

  // Menyimpan jumlah barang
  int jumlahBarang = 7;

  // Menyimpan jumlah poin
  int totalPoin = 850;

  // Menampilkan nilai umur
  print(umur);

  // Menampilkan jumlah barang
  print(jumlahBarang);

  // Menampilkan total poin
  print(totalPoin);
}

void main() {
  // double digunakan untuk menyimpan angka desimal
  double beratPaket = 3.75;

  // Menyimpan harga yang memiliki angka desimal
  double hargaProduk = 12500.50;

  // Menyimpan nilai rating dalam bentuk desimal
  double ratingProduk = 4.7;

  // Menampilkan berat paket
  print(beratPaket);

  // Menampilkan harga produk
  print(hargaProduk);

  // Menampilkan rating produk
  print(ratingProduk);
}

void main() {
  // num bisa menyimpan bilangan bulat maupun bilangan desimal
  num nilaiBarang = 15000;

  // Menampilkan nilai awal
  print(nilaiBarang);

  // Nilai num bisa diubah menjadi angka desimal
  nilaiBarang = 15000.75;

  // Menampilkan nilai setelah diubah
  print(nilaiBarang);
}

void main() {
  // num bisa menyimpan bilangan bulat maupun bilangan desimal
  num nilaiBarang = 15000;

  // Menampilkan nilai awal
  print(nilaiBarang);

  // Nilai num bisa diubah menjadi angka desimal
  nilaiBarang = 15000.75;

  // Menampilkan nilai setelah diubah
  print(nilaiBarang);
}

void main() {
  // Menyimpan kondisi apakah data sedang dimuat
  bool sedangMemuat = true;

  // Mengecek apakah sedangMemuat bernilai true
  if (sedangMemuat) {
    // Dijalankan jika kondisi bernilai true
    print('Data sedang dimuat...');
  } else {
    // Dijalankan jika kondisi bernilai false
    print('Data sudah selesai dimuat');
  }
}

void main() {
  // List digunakan untuk menyimpan beberapa data secara berurutan
  List<String> daftarBuah = [
    'Apel',
    'Mangga',
    'Jeruk',
  ];

  // Index pertama dimulai dari angka 0
  print(daftarBuah[0]);

  // Index kedua adalah 1
  print(daftarBuah[1]);

  // Index ketiga adalah 2
  print(daftarBuah[2]);
}

void main() {
  // Membuat List yang berisi beberapa nama buah
  List<String> daftarBuah = [
    'Apel',
    'Mangga',
    'Jeruk',
  ];

  // add() digunakan untuk menambahkan data baru ke dalam List
  daftarBuah.add('Pisang');

  // Menampilkan seluruh isi List
  print(daftarBuah);
}

// List yang berisi data barang
List<String> daftarBarang = [
  'Laptop',
  'Mouse',
  'Keyboard',
];

// ListView.builder digunakan untuk menampilkan data List
// menjadi daftar pada tampilan aplikasi Flutter
ListView.builder(
  // Menentukan jumlah data yang akan ditampilkan
  itemCount: daftarBarang.length,

  // Membuat tampilan untuk setiap data
  itemBuilder: (context, index) {
    // ListTile digunakan sebagai tampilan setiap item
    return ListTile(
      // Mengambil data berdasarkan index
      title: Text(daftarBarang[index]),
    );
  },
);

void main() {
  // Set digunakan untuk menyimpan data tanpa duplikat
  Set<String> warna = {
    'Merah',
    'Biru',
    'Merah',
    'Hijau',
  };

  // Walaupun Merah ditulis dua kali,
  // Set hanya akan menyimpan satu data Merah
  print(warna);
}

void main() {
  // Membuat Set kosong untuk menyimpan kategori produk
  Set<String> kategoriProduk = {};

  // Menambahkan kategori pertama
  kategoriProduk.add('Elektronik');

  // Menambahkan kategori kedua
  kategoriProduk.add('Furniture');

  // Data yang sama tidak akan menjadi duplikat di dalam Set
  kategoriProduk.add('Elektronik');

  // Menampilkan isi Set
  print(kategoriProduk);
}

void main() {
  // Map digunakan untuk menyimpan data dalam bentuk key dan value
  Map<String, dynamic> pelanggan = {
    // 'nama' adalah key dan 'Rayhan' adalah value
    'nama': 'Rayhan',

    // 'umur' adalah key dan 21 adalah value
    'umur': 21,

    // 'aktif' adalah key dan true adalah value
    'aktif': true,
  };

  // Mengambil value berdasarkan key 'nama'
  print(pelanggan['nama']);

  // Mengambil value berdasarkan key 'umur'
  print(pelanggan['umur']);

  // Mengambil value berdasarkan key 'aktif'
  print(pelanggan['aktif']);
}

void main() {
  // Map digunakan untuk menyimpan data produk
  Map<String, dynamic> dataProduk = {
    // Menyimpan ID produk
    'id': 25,

    // Menyimpan nama produk
    'nama': 'Headphone',

    // Menyimpan harga produk
    'harga': 350000,

    // Menyimpan status ketersediaan produk
    'tersedia': true,
  };

  // Mengambil data berdasarkan key
  print(dataProduk['id']);
  print(dataProduk['nama']);
  print(dataProduk['harga']);
  print(dataProduk['tersedia']);
}

void main() {
  // Map dapat digunakan untuk menyimpan data yang akan dikirim
  // misalnya sebagai data login atau request ke API
  Map<String, dynamic> dataLogin = {
    // Key username berisi username pengguna
    'username': 'rayhan01',

    // Key password berisi password pengguna
    'password': '123456',
  };

  // Menampilkan seluruh data login
  print(dataLogin);
}

void main() {
  // Object dapat digunakan untuk menyimpan berbagai jenis data
  Object data = 'Flutter';

  // Data dapat diganti menjadi angka
  data = 25;

  // Data juga dapat diganti menjadi boolean
  data = true;

  // Menampilkan nilai terakhir
  print(data);
}

void main() {
  // Membuat variabel bertipe Object
  Object data = 'belajar dart';

  // Mengecek apakah data merupakan String
  if (data is String) {
    // Jika benar String, data bisa menggunakan toUpperCase()
    print(data.toUpperCase());
  }
}

void main() {
  // dynamic membuat tipe data variabel bisa berubah-ubah
  dynamic data = 'Flutter';

  // Menampilkan data String
  print(data);

  // Mengubah data menjadi integer
  data = 100;

  // Menampilkan data integer
  print(data);

  // Mengubah data menjadi boolean
  data = false;

  // Menampilkan data boolean
  print(data);
}

void main() {
  // dynamic berisi angka
  dynamic data = 500;

  // Error karena toUpperCase() merupakan method String,
  // sedangkan data saat ini berisi angka
  print(data.toUpperCase());
}

void main() {
  // final digunakan untuk nilai yang hanya bisa ditentukan satu kali
  // DateTime.now() mengambil waktu saat program berjalan
  final DateTime waktuDaftar = DateTime.now();

  // const digunakan untuk nilai yang bersifat konstan
  const double pajak = 0.11;

  // late digunakan ketika nilai akan diberikan setelah deklarasi
  late String nomorMember;

  // Memberikan nilai ke variabel late
  nomorMember = 'MBR-2026-001';

  // Menampilkan waktu pendaftaran
  print(waktuDaftar);

  // Menampilkan nilai pajak
  print(pajak);

  // Menampilkan nomor member
  print(nomorMember);
}

void main() {
  // final digunakan untuk nilai yang ditentukan satu kali
  // Waktu diambil ketika program dijalankan
  final DateTime waktuPembuatan = DateTime.now();

  // const digunakan untuk nilai yang sudah bersifat konstan
  const double biayaPajak = 0.11;

  // Menampilkan waktu pembuatan
  print('Waktu dibuat: $waktuPembuatan');

  // Menampilkan nilai pajak
  print('Pajak: $biayaPajak');
}

// Membuat class bernama Produk
class Produk {
  // final membuat nilai nama tidak bisa diubah setelah object dibuat
  final String nama;

  // final membuat nilai harga tidak bisa diubah setelah object dibuat
  final double harga;

  // Constructor untuk membuat object Produk
  // const memungkinkan object dibuat sebagai constant
  const Produk({
    // required berarti nama wajib diberikan
    required this.nama,

    // required berarti harga wajib diberikan
    required this.harga,
  });

  // Function untuk menghasilkan informasi produk
  String informasi() {
    // Menggabungkan nama dan harga menjadi teks
    // toStringAsFixed(0) membuat harga tanpa angka desimal
    return '$nama - Rp${harga.toStringAsFixed(0)}';
  }
}

void main() {
  // Membuat object Produk menggunakan const
  const Produk produk = Produk(
    // Memberikan nama produk
    nama: 'Keyboard',

    // Memberikan harga produk
    harga: 450000,
  );

  // Memanggil function informasi()
  // kemudian menampilkan hasilnya ke console
  print(produk.informasi());
}