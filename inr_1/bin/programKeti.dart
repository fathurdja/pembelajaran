void main() {
  List<Map<String, dynamic>> mahasiswa = [
    {'nama': 'Alice', 'nilai': 85},
    {'nama': 'Bob', 'nilai': 92},
    {'nama': 'Charlie', 'nilai': 78},
    {'nama': 'David', 'nilai': 66},
    {'nama': 'Eve', 'nilai': 91},
  ];

  // Menampilkan daftar mahasiswa beserta nilai
  print('Daftar Mahasiswa:');
  for (var mhs in mahasiswa) {
    print('Nama: ${mhs['nama']}, Nilai: ${mhs['nilai']}');
  }

  // Menghitung rata-rata nilai mahasiswa
  double totalNilai = 0;
  for (var mhs in mahasiswa) {
    totalNilai += mhs['nilai'];
  }
  double rataRata = totalNilai / mahasiswa.length;
  print('Rata-rata Nilai: $rataRata');

  // Menampilkan mahasiswa dengan nilai tertinggi
  var mahasiswaTertinggi = mahasiswa.reduce((a, b) => a['nilai'] > b['nilai'] ? a : b);
  print('Mahasiswa dengan Nilai Tertinggi: ${mahasiswaTertinggi['nama']}');

  // Menampilkan mahasiswa dengan nilai terendah
  var mahasiswaTerendah = mahasiswa.reduce((a, b) => a['nilai'] < b['nilai'] ? a : b);
  print('Mahasiswa dengan Nilai Terendah: ${mahasiswaTerendah['nama']}');

  // Menampilkan mahasiswa dengan nilai di atas batas tertentu
  int batasNilai = 80;
  var mahasiswaDiAtasBatas = mahasiswa.where((mhs) => mhs['nilai'] > batasNilai).toList();
  print('Mahasiswa dengan Nilai Di Atas $batasNilai:');
  for (var mhs in mahasiswaDiAtasBatas) {
    print('Nama: ${mhs['nama']}, Nilai: ${mhs['nilai']}');
  }

  // Menampilkan mahasiswa dengan nilai tertentu
  int nilaiTertentu = 78;
  var mahasiswaDenganNilaiTertentu = mahasiswa.where((mhs) => mhs['nilai'] == nilaiTertentu).toList();
  if (mahasiswaDenganNilaiTertentu.isNotEmpty) {
    print('Mahasiswa dengan Nilai $nilaiTertentu:');
    for (var mhs in mahasiswaDenganNilaiTertentu) {
      print('Nama: ${mhs['nama']}, Nilai: ${mhs['nilai']}');
    }
  } else {
    print('Tidak ada mahasiswa dengan nilai $nilaiTertentu.');
  }
}