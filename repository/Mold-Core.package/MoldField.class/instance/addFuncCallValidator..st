actions-validators
addFuncCallValidator: methodName
	self addValidator: (self validatorStringNamed: 'funcCall' value: methodName)