import 'dart:io';

import 'package:dpcourse/behaviour/chainofresponsiblity/request.dart';
import 'package:dpcourse/behaviour/chainofresponsiblity/handler_interface.dart';

class HandlerThree extends Handler {
	HandlerThree({
		required Handler? nextHandler,
	}): super(nextHandler);

	@override 
	bool doHandle(Request request) {
		print('[Handler Three] Data: ${request.data}');
		request.data = 'From handler three.';
		return true;
	}
}
