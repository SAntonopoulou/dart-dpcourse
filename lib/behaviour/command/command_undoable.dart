import 'package:dpcourse/behaviour/command/command.dart';

abstract class UndoableCommand extends Command {
	void undo();
}
