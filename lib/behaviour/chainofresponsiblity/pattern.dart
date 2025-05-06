import 'dart:io';

import 'package:dpcourse/behaviour/chainofresponsiblity/request.dart';
import 'package:dpcourse/behaviour/chainofresponsiblity/request_initiator.dart';
import 'package:dpcourse/behaviour/chainofresponsiblity/handler_one.dart';
import 'package:dpcourse/behaviour/chainofresponsiblity/handler_two.dart';
import 'package:dpcourse/behaviour/chainofresponsiblity/handler_three.dart';

void main() {
	Request request = Request(
		data: 'Starting Data',
	);
	HandlerThree handlerThree = HandlerThree(
		nextHandler: null,
	);
	HandlerTwo handlerTwo = HandlerTwo(
		nextHandler: handlerThree,
	);
	HandlerOne handlerOne = HandlerOne(
		nextHandler: handlerTwo,
	);

	RequestInitiator initator = RequestInitiator(
		handler: handlerOne,
	);

	initator.handle(request);

	print('[Main - Final] Data: ${request.data}');
}
