actions-validators
addCondRequiredValidator: otherFieldName
	self addValidator: (self validatorStringNamed: 'condRequired' value: otherFieldName)