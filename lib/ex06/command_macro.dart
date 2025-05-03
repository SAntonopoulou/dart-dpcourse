import 'package:dpcourse/ex06/command.dart';
import 'package:dpcourse/ex06/editor.dart';

class MacroCommand implements Command {
	List<Command> _commands = [];
	final Editor _editor;

	MacroCommand({
		required Editor editor,
	}) : _editor = editor;
	void add(Command command) {
		_commands.add(command);
	}

	@override
	void execute() {
		_editor.executeMacro(_commands);
	}
}
