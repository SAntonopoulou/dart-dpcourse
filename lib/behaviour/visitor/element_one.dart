import 'package:dpcourse/behaviour/visitor/element_interface.dart';
import 'package:dpcourse/behaviour/visitor/visitor_interface.dart';

class ElementOne extends Element {
	ElementOne({
		required String name,
	}): super(name: name);

	void accept(Visitor visitor) {
		visitor.visitOne(this);
	}
}
