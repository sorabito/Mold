utilities
translate: aString
	(String canUnderstand: #seasideTranslated) ifTrue: [^aString seasideTranslated].
	^aString