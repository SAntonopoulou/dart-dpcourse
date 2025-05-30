#include "component.h"
#include "leaf.h"
#include "composite.h"

int main() {
	auto leaf_one = std::make_shared<Leaf>("One");
	auto leaf_two = std::make_shared<Leaf>("Two");
	auto leaf_three = std::make_shared<Leaf>("Three");
	auto leaf_four = std::make_shared<Leaf>("Four");

	auto group_one = std::make_shared<Composite>();
	auto group_two = std::make_shared<Composite>();
	auto group_three = std::make_shared<Composite>();

	group_one->add(leaf_one);
	group_one->add(leaf_two);
	group_two->add(leaf_three);
	group_two->add(leaf_four);

	group_three->add(group_one);
	group_three->add(group_two);

	group_three->render();	
	return 0;
}
