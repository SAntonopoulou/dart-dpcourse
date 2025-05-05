import 'package:dpcourse/behaviour/mediator/mediator_interface.dart';

abstract class Colleague {
	final Mediator mediator;

	Colleague({
		required Mediator mediator,
	}): mediator = mediator;

	void changed();
}
