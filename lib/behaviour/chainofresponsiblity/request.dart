class Request {
	String _data = 'default';

	Request({
		required String data,
	}): _data = data;

	set data(String newData) { _data = newData; }
	String get data => _data;
}
