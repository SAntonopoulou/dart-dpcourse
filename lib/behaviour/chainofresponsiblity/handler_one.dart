import 'dart:io';

import 'package:dpcourse/behaviour/chainofresponsiblity/request.dart';
import 'package:dpcourse/behaviour/chainofresponsiblity/handler_interface.dart';

class HandlerOne extends Handler {
	HandlerOne({
		required Handler? nextHandler,
	}): super(nextHandler);

	@override
	bool doHandle(Request request) {
		print('[Handler One] Data: ${request.data}');
		request.data = 'From handler one.';
		return false;  		
	}
}
