import 'package:dpcourse/behaviour/command/command_undoable.dart';
import 'package:dpcourse/behaviour/command/command.dart';
import 'package:dpcourse/behaviour/command/editor.dart';
import 'package:dpcourse/behaviour/command/history.dart';
import 'package:dpcourse/behaviour/command/video.dart';

class MacroCommand implements UndoableCommand {
	List<Command> _commands = [];
	final Editor _editor;
	final Video _video;

	History _history;
	Map<String, dynamic> previousContent = {};

	MacroCommand({
		required Video video,
		required Editor editor,
		required History history,
	}) : _video = video,
	     _editor = editor,
	     _history = history;
	void add(Command command) {
		_commands.add(command);
	}

	@override
	void execute() {
		previousContent['Contrast'] = _video.contrast;
		previousContent['Label'] = _video.label;
		_editor.executeMacro(_commands);
		_history.push(this);
	}

	@override
	void undo() {
		_video.contrast = previousContent['Contrast'];
		_video.label = previousContent['Label'];
	}
}
