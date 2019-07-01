actions-validators
addEqualsValidator: fieldId
	self addValidator: (self validatorStringNamed: 'equals' value: fieldId)