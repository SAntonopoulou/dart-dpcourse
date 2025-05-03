import 'dart:io';

import 'package:dpcourse/behaviour/memento/document_state.dart';
import 'package:dpcourse/behaviour/memento/history.dart';
import 'package:dpcourse/behaviour/memento/document.dart';

void main() {
	History history = History();
	Document document = Document();
	document.content = "Original Content";
	document.fontName = "Original Font";
	document.fontSize = 12;
	history.push(document.createState());
	print("Original State");
	print(document);
	print("\n");

	print("First Modification");
	document.content = "New Content";
	history.push(document.createState());
	print(document);
	print("\n");

	print("Second Modification");
	document.fontSize = 15;
	print(document);
	print("\n");

	print("First undo:");
	document.restoreState(history.pop());
	print(document);
	print("\n");
	
	print("Second undo:");
	document.restoreState(history.pop());
	print(document);
}
