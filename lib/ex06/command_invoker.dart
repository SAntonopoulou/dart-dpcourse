import 'package:dpcourse/ex06/command.dart';

class CommandInvoker {
	void execute(Command command) {
		command.execute();
	}
}
