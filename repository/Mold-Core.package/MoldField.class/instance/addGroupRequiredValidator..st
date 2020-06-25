actions-validators
addGroupRequiredValidator: groupName
	self addValidator: (self validatorStringNamed: 'groupRequired' value: groupName)