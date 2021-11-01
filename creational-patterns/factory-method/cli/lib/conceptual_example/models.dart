abstract class Product {
  String operation();
}

class ConcreteProductA extends Product {
  @override
  String operation() => '{ ConcreteProductA operation }';
}

class ConcreteProductB extends Product {
  @override
  String operation() => '{ ConcreteProductB operation }';
}
