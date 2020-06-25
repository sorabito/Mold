actions-validators
addMinSizeValidator: charSize
	self addValidator: (self validatorStringNamed: 'minSize' value: charSize)