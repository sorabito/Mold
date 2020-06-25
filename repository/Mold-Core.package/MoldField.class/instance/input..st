accessing
input: val 
	| trimmed |
	trimmed := ((val respondsTo: #trimBoth) and: [ val isSymbol not ]) 
		ifTrue: [ val trimBoth ]
		ifFalse: [ val ].
	input := ((trimmed respondsTo: #isEmpty) and: [ trimmed isEmpty ]) 
		ifTrue: [ nil ]
		ifFalse: [ trimmed ]