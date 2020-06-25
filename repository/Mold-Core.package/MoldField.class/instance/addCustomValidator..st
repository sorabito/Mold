actions-validators
addCustomValidator: regexName
	self addValidator: (self validatorStringNamed: 'custom' value: regexName)