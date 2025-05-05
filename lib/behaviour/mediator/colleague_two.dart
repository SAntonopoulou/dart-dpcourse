import 'package:dpcourse/behaviour/mediator/colleague_interface.dart';
import 'package:dpcourse/behaviour/mediator/mediator_interface.dart';

class ColleagueTwo extends Colleague {
	String _content = 'default';
	String _otherContent = 'default other';

	ColleagueTwo({
		required Mediator mediator,
	}): super(mediator:mediator);

	@override
	void changed() {
		super.mediator.notify(this);
	}

	set content(String newContent) {
		_content = newContent;
		changed();
	}

	String get content => _content;

	set otherContent(String newContent) {
		_otherContent = newContent;
	}

	@override
	String toString() => '[ColleagueTwo] Content: ${_content} - Other Content: ${_otherContent}';
}
