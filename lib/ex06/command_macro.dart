import 'package:dpcourse/ex06/command_undoable.dart';
import 'package:dpcourse/ex06/command.dart';
import 'package:dpcourse/ex06/editor.dart';
import 'package:dpcourse/ex06/history.dart';
import 'package:dpcourse/ex06/video.dart';

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
