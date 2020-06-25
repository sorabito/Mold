private
validateConditions
	(input notNil and: [(self disinfect: input) isNil])
		ifTrue: [ errors add: 'Date not in format ', (format joinUsing: '') ].
	self validateUserConditions