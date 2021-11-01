import 'models.dart';

/// The Creator abstract declares the factory method that's supposed to return a
/// new object of a Product class. The Creator's subclasses usually provide the
/// implementation of this method.
abstract class Creator {
  /// Note that the Creator may also provide some default implementation of
  /// the factory method.
  Product factoryMethod();

  /// Also note that, despite its name, the Creator's primary responsibility
  /// is not creating products. Usually, it contains some core business logic
  /// that relies on Product objects, returned by the factory method.
  /// Subclasses can change that business logic by overriding the
  /// factory method and returning a different type of product from it.
  String someOperation();
}

/// This extension implements the default behavior of the Creator. Usually, when
/// you don't need to
extension DefaultOperationCreator on Creator {
  String defaultOperation() {
    // Call the factory method to create a Product object.
    final product = factoryMethod();
    // Now, use the product.
    return "Creator: The same creator's code has just worked with ${product.operation()}";
  }
}

/// Concrete Creators override the factory method in order to change the
/// resulting product's type.
class ConcreteCreatorA extends Creator {
  /// Note that the signature of the method still uses the abstract product
  /// type, even though the concrete product is actually returned from the
  /// method. This way the Creator can stay independent of concrete product
  /// classes.
  @override
  Product factoryMethod() => ConcreteProductA();

  @override
  String someOperation() => defaultOperation();
}

class ConcreteCreatorB extends Creator {
  @override
  Product factoryMethod() => ConcreteProductB();

  @override
  String someOperation() => defaultOperation();
}

/// The client code works with an instance of a concrete creator, although through
/// its abstract class. As long as the client keeps working with the creator via
/// the abstract class, you can pass it any creator's subclass.
class Client {
  static void someClientCode(Creator creator) => print(
        'Client: I\'m not aware of the creator\'s class, but it still works.'
        '\n${creator.someOperation()}'
        '\n---',
      );
}
