#ifndef COMPOSITE_H
#define COMPOSITE_H

#include "component.h"
#include <vector>
#include <memory>

class Composite : public Component {

public:
	std::vector<std::shared_ptr<Component>> components;
	
	Composite() = default;

	void render() override;

	void add(std::shared_ptr<Component> component);
	void remove(std::shared_ptr<Component> component);
};

#endif

