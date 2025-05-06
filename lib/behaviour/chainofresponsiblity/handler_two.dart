import 'dart:io';

import 'package:dpcourse/behaviour/chainofresponsiblity/request.dart';
import 'package:dpcourse/behaviour/chainofresponsiblity/handler_interface.dart';

class HandlerTwo extends Handler {
	HandlerTwo({
		required Handler? nextHandler,
	}): super(nextHandler);

	@override
	bool doHandle(Request request) {
		print('[Handler Two] Data: ${request.data}');
		request.data = "From handler two.";
		return false;
	}
}
