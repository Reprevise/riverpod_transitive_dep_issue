import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'b.dart';

part 'c.g.dart';

class ANestedValueContainer {
  const ANestedValueContainer({required this.aValueContainer});

  final AValueContainer aValueContainer;
}

@Riverpod(dependencies: [bValue])
ANestedValueContainer cValue(CValueRef ref) {
  final value = ref.watch(bValueProvider);

  return ANestedValueContainer(aValueContainer: value);
}
