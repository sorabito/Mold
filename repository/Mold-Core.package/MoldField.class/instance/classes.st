accessing
classes
	^ classes ifNil: [ classes := OrderedCollection withAll: self defaultClasses ]