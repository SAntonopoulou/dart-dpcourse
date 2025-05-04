import 'package:dpcourse/behaviour/observer/observer.dart';
import 'package:dpcourse/behaviour/observer/subject.dart';

class ObserverOne implements Observer {
	Subject _subject;
	String _data = 'default';

	ObserverOne({
		required Subject subject,
	}) : _subject = subject;

	@override	
	void update(){
		_data = _subject.data;
	}

	@override
	String toString() { return '[Observer One] Data: ${_data}'; }
}
