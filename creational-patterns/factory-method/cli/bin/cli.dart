import 'package:cli/conceptual_example/creator.dart';

void main(List<String> arguments) {
  final creatorA = ConcreteCreatorA();
  final creatorB = ConcreteCreatorB();

  Client.someClientCode(creatorA);
  Client.someClientCode(creatorB);
}
