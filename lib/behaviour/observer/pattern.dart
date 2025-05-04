import 'dart:io';

import 'package:dpcourse/behaviour/observer/subject_concrete.dart';
import 'package:dpcourse/behaviour/observer/observer_one.dart';
import 'package:dpcourse/behaviour/observer/observer_two.dart';

void main() {
	ConcreteSubject subject = ConcreteSubject();
	ObserverOne one = ObserverOne(
				subject: subject,
			  );
	ObserverTwo two = ObserverTwo(
				subject: subject,
			  );

	subject.addObserver(one);
	subject.addObserver(two);

	subject.data = 'Initial data.';
	subject.update();

	print(subject);
	print(one);
	print(two);

	subject.data = 'Updated data.';
	subject.update();

	print(subject);
	print(one);
	print(two);

	subject.removeObserver(one);

	subject.data = 'Final data.';
	subject.update();

	print(subject);
	print(one);
	print(two);
}
