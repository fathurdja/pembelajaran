class car {
  String? name;
  String? merk;
  String? jenis;
  int? tahun;

  car(
      {required String name,
      required String merk,
      required String jenis,
      required int tahun}) {
    this.name = name;
    this.merk = merk;
    this.jenis = jenis;
    this.tahun = tahun;
  }
  void printdata() {
    print("car Constructor $merk,$name,$jenis,$tahun, 10.000.000");
  }
}

class daihatsu extends car {
  daihatsu(
      {required String name,
      required String merk,
      required String jenis,
      required int tahun})
      : super(name: name, merk: merk, jenis: jenis, tahun: tahun);

  @override
  void printdata() {
    print("car Constructor $merk,$name,$jenis,$tahun, 120.000.000");
    // TODO: implement printdata
  }
}

class toyota extends car {
  toyota(
      {required String name,
      required String merk,
      required String jenis,
      required int tahun})
      : super(name: name, merk: merk, jenis: jenis, tahun: tahun);

      
}

void main() {
  car Car = car(name: "Toyota", merk: "innova Zenix", jenis: "XL", tahun: 2023);
  daihatsu Daihatsu =
      daihatsu(name: "Terios", merk: "daihatsu", jenis: "L", tahun: 2021);
  toyota Toyota =
      toyota(name: "toyota", merk: "Avanza", jenis: "XL", tahun: 2019);

  Car.printdata();
  Daihatsu.printdata();
  Toyota.printdata();
}
