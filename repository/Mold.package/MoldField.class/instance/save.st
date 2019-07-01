accessing
save
	"The most important method to get the values back!!!"
	callback
		ifNotNil: [ 
			callback numArgs = 1
				ifTrue: [ callback value: value ]
				ifFalse: [ callback value ] ]