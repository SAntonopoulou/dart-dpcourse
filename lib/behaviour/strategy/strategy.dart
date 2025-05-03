import 'dart:io';

import 'package:dpcourse/behaviour/strategy/interface.dart';
import 'package:dpcourse/behaviour/strategy/context.dart';
import 'package:dpcourse/behaviour/strategy/concereteOne.dart';
import 'package:dpcourse/behaviour/strategy/concereteTwo.dart';

void main() {
	Context context = Context();
	String words = 'some words';

	context.operate(words, ConcreteOne());
	context.operate(words, ConcreteTwo());
}


