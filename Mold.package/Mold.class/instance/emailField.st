fields
emailField
	| f |
	f := fields add: MoldStringField new.
	^ f
		addCondition: 
				[ :val | 
				val isNil or: [ val matchesRegex: '([-_\w]\.?)+@[-\w]+\.[-\w]+(\.\w+)*' ] ]
			labeled: 'Invalid email address';
		yourself