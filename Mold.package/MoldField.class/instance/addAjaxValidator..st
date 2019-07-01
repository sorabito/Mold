actions-validators
addAjaxValidator: selector
	self addValidator: (self validatorStringNamed: 'ajax' value: selector)