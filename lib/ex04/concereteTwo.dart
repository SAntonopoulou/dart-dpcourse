import 'dart:io';

import 'package:dpcourse/ex04/interface.dart';

class ConcreteTwo implements StrategyInterface {
	@override
	void operate(String thing) {
		print('Operating from Concrete Two on ${thing}.');
	}
}
