rendering
renderBootstrapWidgetId: id on: html
	| widgetTag |

	widgetTag := self bootstrapWidgetOn: html.
	widgetTag id: id; title: title;	callback: [ :val | self input: val ].
	example ifNotNil: [ widgetTag placeholder: example ].
	self renderDynamicLabelOf: widgetTag id: id on: html.
	self isValid	ifFalse: [ widgetTag class: 'bg-error' ].
	modifyBlock ifNotNil: [ modifyBlock cull: widgetTag cull: html ].
	^  widgetTag