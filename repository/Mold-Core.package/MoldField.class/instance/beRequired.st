accessing
beRequired
	isRequired ifTrue: [ ^self ].
	isRequired := true.
	self addRequiredValidator