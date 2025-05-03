import 'package:dpcourse/behaviour/command/video.dart';
import 'package:dpcourse/behaviour/command/command.dart';

class Editor {
	final Video _video;

	Editor({
		required Video video,
	}) : _video = video;

	void setContrast(int newContrast) { 
		_video.contrast = newContrast; 
	}

	void setLabel(String newLabel) {
		_video.label = newLabel;
	}

	void executeMacro(List<Command> commands) {
		for(Command command in commands) {
			command.execute();
		}
	}
}
