import 'package:dpcourse/behaviour/memento/document_state.dart';

class History {
	List<DocumentState> _states = [];

	void push(DocumentState state) {
		_states.add(state);
	}

	DocumentState pop() {
		if (_states.isEmpty) {
    			throw StateError('No states in history');
  		}
  
		return _states.removeLast();
	}
	
}
