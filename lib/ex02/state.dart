import 'dart:io';

import 'package:dpcourse/ex02/attack.dart';
import 'package:dpcourse/ex02/axe.dart';
import 'package:dpcourse/ex02/sword.dart';
import 'package:dpcourse/ex02/weapon.dart';

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
