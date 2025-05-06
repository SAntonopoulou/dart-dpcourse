import 'package:dpcourse/behaviour/chainofresponsiblity/handler_interface.dart';
import 'package:dpcourse/behaviour/chainofresponsiblity/request.dart';

class RequestInitiator {
	final Handler handler;

	RequestInitiator({
		required this.handler,
	});

	void handle(Request request) {
		handler.handle(request);
	}
}
