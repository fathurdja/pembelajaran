// abstract class as interface
abstract class Vehicle {
  void start();
  void stop() {
    print("object");
  }
}

// implements interface
class Car implements Vehicle {
  @override
  void start() {
    // TODO: implement start
  }

  @override
  void stop() {
    print('Car stopped');
  }
}

void main() {
  var car = Car();
  car.start();
  car.stop();
}
