class Video {
	int _contrast = 0;
	String _label = "Default";

	Video();

	set label(String newLabel) { _label = newLabel; }
	String get label => _label;

	set contrast(int newContrast) { _contrast = newContrast; }
	int get contrast => _contrast;

	@override
	String toString() => 'Label: ${_label} - Contrast: ${_contrast}';
}
