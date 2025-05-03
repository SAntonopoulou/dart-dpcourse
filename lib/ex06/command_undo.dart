import 'package:dpcourse/ex06/command.dart';
import 'package:dpcourse/ex06/history.dart';

class UndoCommand implements Command {
	History _history;

	UndoCommand({
		required History history,
	}): _history = history;
	
	void execute() {
		_history.pop().undo();	
	}
}
