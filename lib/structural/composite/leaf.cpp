#include "leaf.h"
#include <iostream>

Leaf::Leaf(const std::string& name) : name(name) {}

void Leaf::render() {
	std::cout << "Rendering Leaf: " << name << std::endl;
}
