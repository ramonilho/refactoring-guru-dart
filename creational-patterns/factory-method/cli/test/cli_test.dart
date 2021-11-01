import 'package:test/test.dart';
import 'package:cli/conceptual_example/creator.dart';

void main() {
  test('factoryMethodConceptual', () {
    /// The Application picks a creator's type depending on the
    /// configuration or environment.
    print('App: Launched with the ConcreteCreatorA');
    Client.someClientCode(ConcreteCreatorA());

    print('App: Launched with the ConcreteCreatorB');
    Client.someClientCode(ConcreteCreatorB());
  });
}
