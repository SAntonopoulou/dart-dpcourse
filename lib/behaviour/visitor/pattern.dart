import 'dart:io';

import 'package:dpcourse/behaviour/visitor/element_interface.dart';
import 'package:dpcourse/behaviour/visitor/element_one.dart';
import 'package:dpcourse/behaviour/visitor/element_two.dart';
import 'package:dpcourse/behaviour/visitor/element_three.dart';

import 'package:dpcourse/behaviour/visitor/visitor_interface.dart';
import 'package:dpcourse/behaviour/visitor/visitor_one.dart';
import 'package:dpcourse/behaviour/visitor/visitor_two.dart';

void main() {
	final List<Element> elements = [
		ElementOne(name: "Element One"), 
		ElementTwo(name: "Element Two"), 
		ElementThree(name: "Element Three")];

	final VisitorOne visitorOne = VisitorOne();
	final VisitorTwo visitorTwo = VisitorTwo();

	loopElements(elements);

	visitElements(elements, visitorOne);
	loopElements(elements);

	visitElements(elements, visitorTwo);
	loopElements(elements);

}

void loopElements(List<Element> elements) {
	for (Element element in elements) {
		print(element.name);
	}
}

void visitElements(List<Element> elements, Visitor visitor) {
	for (Element element in elements) {
		element.accept(visitor);
	}
}
