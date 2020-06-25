accessing
options
	options ifNil: [ 
		options := CXOptions new.
		"Initialize the fields"
		options username: ''.
		options eMail: ''.
		options password: ''.
		options entityName: ''.
		].
	^options
	