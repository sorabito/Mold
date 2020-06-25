private
disinfect: aString 
	(aString reject: [:each | each isDigit or: [each ==$- ]]) notEmpty ifTrue: [^nil].
	^ [aString asNumber] on: Error do: [:ex | nil ]