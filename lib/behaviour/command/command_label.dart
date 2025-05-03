import 'package:dpcourse/behaviour/command/command.dart';
import 'package:dpcourse/behaviour/command/editor.dart';

class LabelCommand implements Command {
	final String _label;
	final Editor _editor;

	LabelCommand({
		required String label,
		required Editor editor,
	}) : _label = label,
	     _editor = editor;

	@override
	void execute() {
		_editor.setLabel(_label);
	}	
}
