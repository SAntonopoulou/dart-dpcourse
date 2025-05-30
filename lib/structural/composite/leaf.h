#ifndef LEAF_H
#define LEAF_H

#include "component.h"
#include <string>

class Leaf : public Component {
private:
	std::string name; 

public:
	Leaf(const std::string& name);

	void render() override;
};
#endif
