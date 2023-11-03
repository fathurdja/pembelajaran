void main() {
  int bil1 = 4;
  int bil2 = 2;
  int hasil = 0;
  int operasi = 1;

  switch (operasi) {
    case 1:
      print("ini adalah perkalian ");
      hasil = bil1 * bil2;
      print(hasil);
      break;
    case 2:
      print("ini adalah pembagian ");
      hasil = bil1 % bil2;
      print(hasil);
      break;
    case 3:
      print("ini adalah penambahan");
      hasil = bil1 + bil2;
      print(hasil);
      break;
    case 4:
      print("ini adalah pengurangan");
      hasil = bil1 - bil2;
      print(hasil);
      break;
  }
}
