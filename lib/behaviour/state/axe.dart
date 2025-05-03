import 'dart:io';

import 'package:dpcourse/behaviour/state/attack.dart';

class Axe implements AttackItem {
	@override
	String _description = "Axe";

	@override
	void slash() {
		print("Performs a slashing attack with an axe!");
	}

	@override
	void stab() {
		print("Somehow performs a stabbing attack with an axe!");
	}

	@override
	String describe() => "Axe";
}
