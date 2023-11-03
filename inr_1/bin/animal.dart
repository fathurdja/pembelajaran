// class or Blueprint

class laptop {
  // method
  String? name;
  String? brand;
  // constructor
  laptop({required String name, required String brand}) {
    this.name = name;
    this.brand = brand;
  }
  void printName() {
    print("laptop Constructor $name , $brand name");
  }
}

// classes or blueprint (child)
class MacBook extends laptop {
  // constructor
  int? createYear;
  MacBook(
      {required String name, required String brand, required int createYear})
      : super(
          name: name,
          brand: "apple",
        ) {
    display();
  }

  void display() {
    super.printName();
  }
}

void main() {
  // objek
  MacBook(name: "acer", brand: "apple", createYear: 2012);
}
