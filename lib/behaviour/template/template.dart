import 'package:dpcourse/behaviour/template/window_interface.dart';
import 'package:dpcourse/behaviour/template/window01.dart';
import 'package:dpcourse/behaviour/template/window02.dart';

void main() {
	WindowTemplate window = WindowOne();
	window.execute();

	window = WindowTwo();
	window.execute();	
}
