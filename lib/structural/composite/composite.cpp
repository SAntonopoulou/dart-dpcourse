#include "component.h"
#include "composite.h"
#include <algorithm>

void Composite::render() {
	for (const auto& component : components) {
		component->render();
	}
}

void Composite::add(std::shared_ptr<Component> component) {
	Composite::components.push_back(component);
}

void Composite::remove(std::shared_ptr<Component> component) {
	components.erase(
		std::remove(
			components.begin(), 
			components.end(), 
			component
		),
		components.end()
	);
}
