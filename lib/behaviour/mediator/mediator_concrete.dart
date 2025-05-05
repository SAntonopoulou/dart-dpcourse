import 'dart:io';

import 'package:dpcourse/behaviour/mediator/mediator_interface.dart';
import 'package:dpcourse/behaviour/mediator/colleague_interface.dart';

import 'package:dpcourse/behaviour/mediator/colleague_one.dart';
import 'package:dpcourse/behaviour/mediator/colleague_two.dart';

enum ColleagueType {
	ColleagueOne,
	ColleagueTwo,
}

class ConcreteMediator implements Mediator {
	final Map<ColleagueType, Colleague> _colleagues = {};

  	@override
  	void notify(Colleague colleague) {
    		if (colleague == _colleagues[ColleagueType.ColleagueOne]) {
      			final col = colleague as ColleagueOne;
      			
			final target = _colleagues[ColleagueType.ColleagueTwo];
      			if (target is ColleagueTwo) {
        			target.otherContent = col.content;
      			}	
    		} else if (colleague == _colleagues[ColleagueType.ColleagueTwo]) {
      			final col = colleague as ColleagueTwo;

      			final target = _colleagues[ColleagueType.ColleagueOne];
      			if (target is ColleagueOne) {
        			target.otherContent = col.content;
      			}
    		} else {
      			print('[Mediator] Invalid Colleague');
    		}
  	}

	void addColleague(ColleagueType type, Colleague colleague) {
		_colleagues[type] = colleague;	
	}

	void removeColleague(ColleagueType type) {
		_colleagues.remove(type);
	}
}
