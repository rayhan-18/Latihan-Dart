void main() {
  // 1. TIPE DATA DASAR & EXPLICIT TYPING (Materi 1, 9-14)
  String nama = 'Rayhan';
  int umur = 19; 
  double harga = 3250000.0;
  bool aktif = true;
  num nilai = 15000; // Tipe num bisa menampung int, lalu diubah ke double
  nilai = 15000.50;

  // 10. STRING INTERPOLATION
  print('Nama: $nama, Umur: $umur');
  print('Harga: $harga, Aktif: $aktif, Nilai: $nilai');

  // 2. NULL SAFETY, OPERATOR, & ACCESS (Materi 2-5)
  String? catatan; // Bisa null
  print(catatan ?? 'Tidak ada catatan'); // Null-aware operator (??)
  
  // Menggunakan kondisi waktu (detik genap/ganjil) agar Dart tidak bisa menebak hasilnya.
  // Karena nilainya kini tidak pasti (bisa null, bisa teks), operator '?.' menjadi valid digunakan.
  catatan = DateTime.now().second % 2 == 0 ? null : 'Catatan baru';
  print(catatan?.toUpperCase()); // Null-aware access (?.)

  // 3. FINAL, CONST, LATE (Materi 6-8, 25)
  final DateTime waktu = DateTime.now(); // Nilai diisi saat aplikasi berjalan
  const double pajak = 0.11; // Nilai mutlak sebelum aplikasi berjalan
  late String pesanan; 
  pesanan = 'PSN-001'; // Diinisialisasi nanti sebelum dipakai

  print('Waktu: $waktu, Pajak: $pajak, Pesanan: $pesanan');

  // 4. COLLECTION: LIST, SET, MAP (Materi 15-21)
  List<String> buah = ['Apel', 'Mangga'];
  buah.add('Jeruk'); // Bisa duplikat & berurutan
  print('Daftar Buah: $buah');
  
  Set<String> warna = {'Merah', 'Biru'};
  warna.add('Merah'); // Otomatis ditolak karena Set harus unik
  print('Daftar Warna: $warna');

  Map<String, dynamic> user = {
    'username': 'rayhan01',
    'aktif': true
  }; // Data berpasangan (Key-Value)
  print('Data User: $user');

  // 5. OBJECT & DYNAMIC (Materi 22-24)
  Object dataObj = 'Flutter';
  if (dataObj is String) print(dataObj.toUpperCase()); // Cek tipe pakai 'is'

  dynamic dataDyn = 100;
  dataDyn = 'Bebas ganti tipe tanpa error'; 
  print('Dynamic Data: $dataDyn'); 

  // 26. EKSEKUSI OBJECT CLASS
  const Produk produk = Produk(nama: 'Keyboard', harga: 450000);
  print(produk.informasi());
}

// 26. IMMUTABLE CLASS (Dideklarasikan di luar main, dipindah ke bawah)
class Produk {
  final String nama;
  final double harga;
  
  const Produk({required this.nama, required this.harga});
  
  String informasi() => '$nama - Rp${harga.toStringAsFixed(0)}';
}