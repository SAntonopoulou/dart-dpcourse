import 'package:dpcourse/behaviour/chainofresponsiblity/request.dart';

abstract class Handler {
	final Handler? nextHandler;

	Handler(this.nextHandler);

	void handle(Request request) {
		if (doHandle(request)) {
			return;
		}
		if (nextHandler != null) {
			nextHandler!.handle(request);
		}
	}

	bool doHandle(Request request);
}
