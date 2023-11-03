class animal {
  String? name;
  int? numberOflegs;
  int? lifeSpan;

  animal(
      {required String name,
      required int numberOflegs,
      required int lifeSpan}) {
    print("berhasil membuat objek $name");
  }
  void printData() {
    print("apakah berhasil");
  }
}

void main() {
  animal anjing = animal(name: "anjing", numberOflegs: 4, lifeSpan: 20);
  printDataAnimalWithObject(animal: anjing);
}

void printDataAnimal(String nama,
     {required int numberOflegs, required int lifeSpan}) {   print("nama $nama jumlah kaki $numberOflegs umur hidup $lifeSpan");
 }

 void printDataAnimalWithObject({required animal animal}) {
   print(
      "nama ${animal.name} jumlah kaki ${animal.numberOflegs} umur hidup ${animal.lifeSpan}");
 }
