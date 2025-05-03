import 'package:dpcourse/behaviour/command/command.dart';
import 'package:dpcourse/behaviour/command/editor.dart';

class ContrastCommand implements Command {
	final Editor _editor;
	final int _contrast;

	ContrastCommand({
		required Editor editor,
		required int contrast,
	}) : _editor = editor, 
	     _contrast = contrast;

	@override
	execute(){
		_editor.setContrast(_contrast);
	}
}
