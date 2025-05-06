import 'package:dpcourse/behaviour/visitor/visitor_interface.dart';
import 'package:dpcourse/behaviour/visitor/element_interface.dart';

class VisitorOne extends Visitor {
	@override
	void visitOne(Element element) { element.name = "Visitor One Visited"; }

	@override
	void visitTwo(Element element) { element.name = "Visitor One Visited"; }

	@override
	void visitThree(Element element) { element.name = "Visitor One Visited"; }
}
