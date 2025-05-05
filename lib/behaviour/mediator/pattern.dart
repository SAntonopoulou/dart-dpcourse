import 'package:dpcourse/behaviour/mediator/mediator_concrete.dart';
import 'package:dpcourse/behaviour/mediator/colleague_one.dart';
import 'package:dpcourse/behaviour/mediator/colleague_two.dart';

main() {
	ConcreteMediator mediator = ConcreteMediator();
	ColleagueOne colleagueOne = ColleagueOne(mediator: mediator);
	ColleagueTwo colleagueTwo = ColleagueTwo(mediator: mediator);
	
	mediator.addColleague(
		ColleagueType.ColleagueOne,
		colleagueOne,
	);

	mediator.addColleague(
		ColleagueType.ColleagueTwo,
		colleagueTwo,
	);

	print(colleagueOne);
	print(colleagueTwo);

	colleagueOne.content = 'New Content: Colleague One';
	
	print(colleagueOne);
	print(colleagueTwo);

	colleagueTwo.content = 'New Content: Colleague Two';

	print(colleagueOne);
	print(colleagueTwo);	
}
