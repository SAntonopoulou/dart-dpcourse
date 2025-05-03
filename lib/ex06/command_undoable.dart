import 'package:dpcourse/ex06/command.dart';

abstract class UndoableCommand extends Command {
	void undo();
}
