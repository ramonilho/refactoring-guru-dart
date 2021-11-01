import 'package:cli/conceptual_example/creator.dart';

void main(List<String> arguments) {
  for (var creator in [
    ConcreteCreatorA(),
    ConcreteCreatorB(),
  ]) {
    Client.someClientCode(creator);
  }
}
