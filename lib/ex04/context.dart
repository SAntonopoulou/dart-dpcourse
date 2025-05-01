import 'package:dpcourse/ex04/interface.dart';

class Context {
	void operate(String thing, StrategyInterface strategy) {
		strategy.operate(thing);
	}
}
