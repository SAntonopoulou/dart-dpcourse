import 'package:dpcourse/behaviour/visitor/visitor_interface.dart';
import 'package:dpcourse/behaviour/visitor/element_interface.dart';

class VisitorTwo extends Visitor {
	@override
	void visitOne(Element element) { element.name = "Visitor Two Visited"; }

	@override
	void visitTwo(Element element) { element.name = "Visitor Two Visited"; }

	@override
	void visitThree(Element element) { element.name = "Visitor Two Visited"; }
}
