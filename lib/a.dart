import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'a.g.dart';

@Riverpod(dependencies: [])
String aValue(AValueRef ref) => "Hello World";
