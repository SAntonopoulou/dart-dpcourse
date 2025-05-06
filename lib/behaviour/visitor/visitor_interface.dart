import 'package:dpcourse/behaviour/visitor/element_interface.dart';

abstract class Visitor {
	void visitOne(Element element);
	void visitTwo(Element element);
	void visitThree(Element element);	
}
