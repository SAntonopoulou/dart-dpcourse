import 'package:dpcourse/behaviour/command/video.dart';
import 'package:dpcourse/behaviour/command/editor.dart';
import 'package:dpcourse/behaviour/command/command.dart';
import 'package:dpcourse/behaviour/command/command_contrast.dart';
import 'package:dpcourse/behaviour/command/command_label.dart';
import 'package:dpcourse/behaviour/command/command_macro.dart';
import 'package:dpcourse/behaviour/command/command_invoker.dart';
import 'package:dpcourse/behaviour/command/history.dart';
import 'package:dpcourse/behaviour/command/command_undoable.dart';
import 'package:dpcourse/behaviour/command/command_undo.dart';

void main() {
	History history = History();
	Video video = Video();
	Editor editor = Editor(
		video: video,
	);
	CommandInvoker invoker = CommandInvoker();
	
	print(video);

	
	invoker.execute(
		ContrastCommand(
			editor: editor,
			contrast: 10,
		),
	);

	print(video);	

	invoker.execute(
		LabelCommand(
			editor: editor,
			label: 'Test label',
		),
	);

	print(video);

	MacroCommand macro = MacroCommand(
		video: video,
		editor: editor,
		history: history,
	);

	macro.add(ContrastCommand(
		editor: editor,
		contrast: 20,
	));	

	macro.add(LabelCommand(
		editor: editor,
		label: 'Final label',
	));

	invoker.execute(macro);

	print(video);

	MacroCommand newMacro = MacroCommand(
		video: video,
		editor: editor,
		history: history,
	);

	newMacro.add(LabelCommand(
		editor: editor,
		label: 'Another label',
	));
	
	invoker.execute(newMacro);

	print(video);

	invoker.execute(UndoCommand(history: history));

	print(video);

	invoker.execute(UndoCommand(history: history));

	print(video);
}
