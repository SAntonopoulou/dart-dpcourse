import 'dart:io';

import 'package:dpcourse/ex02/attack.dart';

class Sword implements AttackItem {
	@override
	String _description = "Sword";

	@override
	void slash() {
		print("Performs a slashing attack with a sword!");
	}

	@override
	void stab() {
		print("Performs a stabbing attack with a sword!");
	}

	@override
	String describe() => "Sword";
}
