import 'package:dpcourse/ex06/command_undoable.dart';

class History {
	List<UndoableCommand> _commands = [];

	void push(UndoableCommand command) {
		_commands.add(command);
	}

	UndoableCommand pop() {
		return _commands.removeLast();
	}
}
