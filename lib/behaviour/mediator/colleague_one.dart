import 'package:dpcourse/behaviour/mediator/colleague_interface.dart';
import 'package:dpcourse/behaviour/mediator/mediator_interface.dart';

class ColleagueOne extends Colleague {
	String _content = 'default';
	String _otherContent = 'default other';

	ColleagueOne({
		required Mediator mediator,
	}): super(mediator: mediator);

	@override
	void changed() {
		super.mediator.notify(this);
	}

	set content(String newContent) {
		_content = newContent;
		changed();
	}

	String get content => _content;

	set otherContent(String newContent){
		_otherContent = newContent;
	}

	String get otherContent => _otherContent;

	@override
	String toString() => '[ColleagueOne] Content: ${_content} - Other Content: ${_otherContent}';
}
