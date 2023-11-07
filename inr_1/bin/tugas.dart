abstract class family {
  void bermain();
  void makanBersama();
}

class bapak implements family {
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
  @override
  void bermain() {
    print("Ibu hadir dalam bermain");
  }

  @override
  void makanBersama() {
    print("ibu memasak untuk makan malam");
  }
}

void main() {
  var Mom = ibu();
  Mom.bermain();

  var Dad = bapak();
  Dad.makanBersama();
}
