abstract class Vehicle {
  void start();
  void stop();
  void honk();
}

class Car extends Vehicle {
  @override
  void start() {
    // TODO: implement start
    print("The car is starting");
  }

  @override
  void stop() {
    // TODO: implement stop
    print("The car is stop");
  }

  @override
  void honk() {
    // TODO: implement honk
    print("The car is honking");
  }
}

final class Bike extends Vehicle {
  @override
  void start() {
    // TODO: implement start
    print("The bike is starting");
  }

  @override
  void stop() {
    // TODO: implement stop
    print("The bike is stop");
  }

  @override
  void honk() {
    // TODO: implement honk
    print("The bike is honking");
  }
}

void main() {
  Vehicle car = Car();
  car.start();
  car.stop();
  car.honk();
  Vehicle bike = Bike();
  print("===============");
  bike.start();
  bike.stop();
  bike.honk();
  print("================");

  // store the object of vehicle as list
  List<Vehicle> vehicle = [];
  vehicle.addAll([car, bike]);
  vehicle.forEach((ele) {
    ele.start();
    ele.stop();
    ele.honk();
    print("===============");
  });
}
