rendering
renderWidgetId: id on: html
	| tag |
	tag := self widgetOn: html.
	example ifNotNil: [tag placeholder: example ].
	tag	id: id; title: title; callback: [ :val | self input: val ].
	self renderDynamicLabelOf: tag id: id on: html.
	
	self isValid	ifFalse: [ tag class: 'error' ].
	self classes do: [:each | tag class: each ].	
	tag class: self validatorsString.
	
	modifyBlock ifNotNil: [modifyBlock cull: tag cull: html].

	^ tag