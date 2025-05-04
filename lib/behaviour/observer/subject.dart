import 'package:dpcourse/behaviour/observer/observer.dart';

abstract class Subject {
	List<Observer> _observers = [];

	String _data = 'default';

	String get data => _data;
	set data(String newData) => _data = newData;

	void addObserver(Observer observer) {
		_observers.add(observer);
	}

	void removeObserver(Observer observer) {
		_observers.remove(observer);
	}

	void update() {
		for(Observer observer in _observers) {
			observer.update();
		}
	}	
}
