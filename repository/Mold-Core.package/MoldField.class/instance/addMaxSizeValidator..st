actions-validators
addMaxSizeValidator: charSize
	self addValidator: (self validatorStringNamed: 'maxSize' value: charSize)