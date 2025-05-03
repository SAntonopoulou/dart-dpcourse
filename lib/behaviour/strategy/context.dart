import 'package:dpcourse/behaviour/strategy/interface.dart';

class Context {
	void operate(String thing, StrategyInterface strategy) {
		strategy.operate(thing);
	}
}
