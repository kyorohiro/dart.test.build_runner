import 'package:build/build.dart';
import 'dart:async';

Builder helloBuilder(BuilderOptions options) {
  return new HelloBuilder();
}

class HelloBuilder implements Builder {
  FutureOr<void> build(BuildStep buildStep) async {
    print(">> ${buildStep.inputId}");
  }

  Map<String, List<String>> get buildExtensions {
    return {".dart": const [".g.dart"]};
  }
}
