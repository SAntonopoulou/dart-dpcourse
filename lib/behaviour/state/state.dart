import 'dart:io';

import 'package:dpcourse/behaviour/state/attack.dart';
import 'package:dpcourse/behaviour/state/axe.dart';
import 'package:dpcourse/behaviour/state/sword.dart';
import 'package:dpcourse/behaviour/state/weapon.dart';

void main() {
	Weapon weapon = Weapon(
		currentWeapon: Sword(),
	);
	weapon.slash();
	weapon.stab();
	weapon.switchWeapon(Axe());
	weapon.slash();
	weapon.stab();
}
