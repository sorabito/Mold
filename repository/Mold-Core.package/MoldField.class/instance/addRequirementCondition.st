private
addRequirementCondition
	self addCondition: [:object | isRequired not or: [object notNil]]
		labeled:  [self requiredMessage]