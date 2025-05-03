import 'package:dpcourse/ex06/video.dart';
import 'package:dpcourse/ex06/editor.dart';
import 'package:dpcourse/ex06/command.dart';
import 'package:dpcourse/ex06/command_contrast.dart';
import 'package:dpcourse/ex06/command_label.dart';
import 'package:dpcourse/ex06/command_macro.dart';
import 'package:dpcourse/ex06/command_invoker.dart';

void main() {
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
		editor: editor,
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
}
