import 'package:dpcourse/ex05/window_interface.dart';
import 'package:dpcourse/ex05/window01.dart';
import 'package:dpcourse/ex05/window02.dart';

void main() {
	WindowTemplate window = WindowOne();
	window.execute();

	window = WindowTwo();
	window.execute();	
}
