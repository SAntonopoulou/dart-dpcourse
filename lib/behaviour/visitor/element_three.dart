import 'package:dpcourse/behaviour/visitor/element_interface.dart';
import 'package:dpcourse/behaviour/visitor/visitor_interface.dart';

class ElementThree extends Element {
	ElementThree({
		required String name,
	}): super(name: name);

	void accept(Visitor visitor) {
		visitor.visitThree(this);
	}
}
