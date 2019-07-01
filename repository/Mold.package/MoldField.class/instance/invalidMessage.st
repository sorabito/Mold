accessing
invalidMessage
	^invalidMessage ifNil: [invalidMessage := self translate: 'Invalid entry']