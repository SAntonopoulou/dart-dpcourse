class DocumentState {
	final String _content;
	final String _fontName;
	final int _fontSize;

	DocumentState({
		required String content,
		required String fontName,
		required int fontSize,
	}) : _content = content,
	     _fontName = fontName,
	     _fontSize = fontSize;

	String get content => _content;

	String get fontName => _fontName;

	int get fontSize => _fontSize;
}
