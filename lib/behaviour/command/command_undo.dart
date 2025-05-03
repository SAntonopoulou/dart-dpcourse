import 'package:dpcourse/behaviour/command/command.dart';
import 'package:dpcourse/behaviour/command/history.dart';

class UndoCommand implements Command {
	History _history;

	UndoCommand({
		required History history,
	}): _history = history;
	
	void execute() {
		_history.pop().undo();	
	}
}
