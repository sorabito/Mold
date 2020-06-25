actions-validators
addMinimumCheckboxValidator: minimunChecks
	self addValidator: (self validatorStringNamed: 'minCheckbox' value: minimunChecks asString)