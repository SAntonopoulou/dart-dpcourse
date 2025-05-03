import 'package:dpcourse/behaviour/iterator/iterator_interface.dart';

class CustomIterable {
	List<String> content = ["One", "Two", "Three", "Four"];

	CustomIterable();

	IteratorInterface createIterable() {
		return IterableList(content: this.content);
	}

}

class IterableList implements IteratorInterface<String> {
	List<String> content;
	int index = 0;

	IterableList({
		required List<String> content,
	}) : content = content;

	@override
	String current() {
		return content[index];
	}

	@override
	bool hasNext() {
		return index < content.length;
	}

	@override
	void next() {
		index++;
	}
}
