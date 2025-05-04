import 'package:dpcourse/behaviour/observer/subject.dart';

class ConcreteSubject extends Subject {
	@override
	String toString() {
		return '[Concrete Subject] Data: ${super.data}';
	} 
}
