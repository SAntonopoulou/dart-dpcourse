import 'package:dpcourse/behaviour/visitor/visitor_interface.dart';

abstract class Element {
	String _name;

	Element({
		required String name,
	}): _name = name;

	void accept(Visitor visitor);

	set name(String newName) { _name = newName; }
	String get name => _name;
}
