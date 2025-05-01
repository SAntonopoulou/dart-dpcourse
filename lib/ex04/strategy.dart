import 'dart:io';

import 'package:dpcourse/ex04/interface.dart';
import 'package:dpcourse/ex04/context.dart';
import 'package:dpcourse/ex04/concereteOne.dart';
import 'package:dpcourse/ex04/concereteTwo.dart';

void main() {
	Context context = Context();
	String words = 'some words';

	context.operate(words, ConcreteOne());
	context.operate(words, ConcreteTwo());
}


