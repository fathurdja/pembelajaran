abstract class family {
  void bermain();
  void makanBersama();
}

class bapak implements family {
  String? name;
  bapak({required String name}) {
    this.name = name;
  }
  @override
  void bermain() {
    print("bapak bermain bersama ");
  }

  @override
  void makanBersama() {
    print("Bapak hadir dalam makan malam ");
  }
}

class ibu implements family {
  String? name;
  ibu({required String name}) {
    this.name = name;
  }
  @override
  void bermain() {
    print("Ibu hadir dalam bermain");
  }

  @override
  void makanBersama() {
    print("ibu memasak untuk makan malam");
  }
}

class anak implements family {
  String? name;

  anak({required String name}) {
    this.name = name;
  }
  @override
  void bermain() {
    print("$name ikut bermain");
  }
  @override
  void makanBersama() {
    // TODO: implement makanBersama
  }
}

void main() {
  List<Map<String,family>> allFamily = [
    {'anak': anak(name: 'fafa')},
    {'bapak': bapak(name: 'jaka')},
    {'ibu': ibu(name: 'mei')},
  ];

  allFamily[0]['anak']!.bermain();
 
}
