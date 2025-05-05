import 'package:dpcourse/behaviour/mediator/colleague_interface.dart';

abstract class Mediator {
	void notify(Colleague colleague);
}
