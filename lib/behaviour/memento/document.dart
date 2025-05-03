import 'dart:io';

import 'package:dpcourse/behaviour/memento/document_state.dart';

class Document {
	String _content = '';
	String _fontName = '';
	int _fontSize = 0;

	Document();

	Document.withContent({
		required String content,
	}) : _content = content;

	String get content => _content;
	set content(String value) { _content = value; } 

	String get fontName => _fontName;
	set fontName(String value) { _fontName = value; }

	int get fontSize => _fontSize;
	set fontSize(int value) { _fontSize = value;}

	DocumentState createState() {
		return  DocumentState(
			content: _content,
			fontName: _fontName,
			fontSize: _fontSize,
		);
	}

	void restoreState(DocumentState previousState) {
		_content = previousState.content;
		_fontName = previousState.fontName;
		_fontSize = previousState.fontSize;
	}

	@override
	String toString() {
		return "Content: ${_content}\nFontName: ${_fontName}\nFontSize: ${_fontSize}";
	}
}
