import 'dart:io';

import 'package:dpcourse/behaviour/iterator/iterator_interface.dart';
import 'package:dpcourse/behaviour/iterator/iterable.dart';

void main() {
	CustomIterable iterable = CustomIterable();

	IteratorInterface iterableObject = iterable.createIterable();

	while(iterableObject.hasNext()) {
		print(iterableObject.current());
		iterableObject.next();
	}
}
