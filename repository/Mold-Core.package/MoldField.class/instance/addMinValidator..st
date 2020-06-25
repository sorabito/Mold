actions-validators
addMinValidator: float
	self addValidator: (self validatorStringNamed: 'min' value: float)