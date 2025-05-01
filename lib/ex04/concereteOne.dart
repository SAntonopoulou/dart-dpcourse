import 'dart:io';
import 'package:dpcourse/ex04/interface.dart';

class ConcreteOne implements StrategyInterface {
	@override
	void operate(String thing) {
		print('Performing operation from Concerete One on ${thing}');
	}
}

