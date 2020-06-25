accessing
requiredMessage
	^requiredMessage ifNil: [requiredMessage := self translate: 'This field is required.']