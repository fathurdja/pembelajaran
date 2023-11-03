
import 'dart:io';



void main() {
  List<Map<String, dynamic>> mhs_Kls = [
    {'nama': 'Fathur Rizqi', 'nilai': 89},
    {'nama': 'Mile Ahmad', 'nilai': 56},
    {'nama': 'Fajar Abu', 'nilai': 78}
  ];

  while (true) {
    print('Menu Program');
    print('1.Melihat Daftar mahasiswa dan nilainya');
    print('2.Menghitung Rata Rata nilai Mahasiswa');
    print('3.Menampilkan mahasiswa dengan Nilai tertinggi');
    print('4.Menampilkan Mahasiswa dengan Nilai terendah');
    print('5.Menampilkan Mahasiswa dengan batas nilai tertentu');
    print('6.Menghapus Data Mahasiswa');

    print('pilihan menu (1-6)');
    var  pilihan = stdin.readLineSync();

    switch (pilihan) {
      case '1':
        print('Daftar Mahasiswa');
        for (var mhs in mhs_Kls) {
          print('nama : ${mhs['nama']},nilai : ${mhs['nilai']}');
        }
        ;
        break;
      case '2':
        double total = 0;
        double rataRata = 0;
        for (var mhs in mhs_Kls) {
          total += mhs['nilai'];
        }
        rataRata = total / mhs_Kls.length;
        print('Nilai rata rata : $rataRata');
        break;
      case '3':
        var mhsTertinggi =
            mhs_Kls.reduce((a, b) => a['nilai'] < b['nilai'] ? a : b);
        print(
            'nama Mahasiswa dengan nilai tertinggi adalah ${mhsTertinggi['nama']}');
        break;
      case '4':
        var mhsTerendah =
            mhs_Kls.reduce((a, b) => a['nilai'] > b['nilai'] ? a : b);
        print(
            'nama Mahasiswa dengan nilai terendah adalah ${mhsTerendah['nama']}');
        break;
      case '5':
        var angkaBatas = 89;
        print('Angka yang ditentukan adalah $angkaBatas');
        var hasil = mhs_Kls.where((mhs) => mhs['nilai'] == angkaBatas).toList();
        if (hasil.isNotEmpty) {
          print('Mahasiswa dengan nilai $angkaBatas adalah:');
          for (var mhs in mhs_Kls) {
            print('nama : ${mhs['nama']} nilai : ${mhs['nilai']}');
          }
        } else {
          print('tidak ada mahasiswa dengan nilai $angkaBatas');
        }
        break;
      case '6':
        print('menghapus daftar Mahasiswa');

        void hapus(String namaMhs) {
          mhs_Kls.removeWhere((mhs) => mhs['nama'] == namaMhs);
        }
        hapus('Fajar Abu');
         for (var mhs in mhs_Kls) {
            print('nama : ${mhs['nama']} nilai : ${mhs['nilai']}');
          }
      default:
        print('pilihan tidak ada');
    }
    ;
  }
}
