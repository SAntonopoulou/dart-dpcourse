import 'package:dpcourse/behaviour/command/command.dart';

class CommandInvoker {
	void execute(Command command) {
		command.execute();
	}
}
