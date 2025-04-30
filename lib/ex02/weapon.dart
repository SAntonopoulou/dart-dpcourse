import 'package:dpcourse/ex02/attack.dart';

class Weapon {
	AttackItem _currentWeapon;

	Weapon({
		required AttackItem currentWeapon,
	}) : _currentWeapon = currentWeapon;
	
	void switchWeapon(AttackItem newWeapon) {
		_currentWeapon = newWeapon;
	}

	void slash() {
		_currentWeapon.slash();
	}

	void stab() {
		_currentWeapon.stab();
	}

	String describe() {
		return _currentWeapon.describe();
	}
}
