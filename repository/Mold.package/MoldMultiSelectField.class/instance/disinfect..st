private
disinfect: aCollection
	^ (aCollection size = 1 and: [ aCollection first isNil])
        ifTrue: [ OrderedCollection new ]
        ifFalse: [ aCollection ]