import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'a.dart';

part 'b.g.dart';

class AValueContainer {
  const AValueContainer({required this.aValue});

  final String aValue;
}

@Riverpod(dependencies: [aValue])
AValueContainer bValue(BValueRef ref) {
  final value = ref.watch(aValueProvider);

  return AValueContainer(aValue: value);
}
