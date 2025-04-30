import 'dart:io';

import 'package:dpcourse/ex03/iterator_interface.dart';
import 'package:dpcourse/ex03/iterable.dart';

void main() {
	CustomIterable iterable = CustomIterable();

	IteratorInterface iterableObject = iterable.createIterable();

	while(iterableObject.hasNext()) {
		print(iterableObject.current());
		iterableObject.next();
	}
}
