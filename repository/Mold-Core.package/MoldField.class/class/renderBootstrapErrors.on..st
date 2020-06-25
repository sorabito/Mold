common
renderBootstrapErrors: aCollection on: html
	aCollection isEmpty ifTrue: [ ^ self ].
	aCollection	do: [ :each | html small class: 'help-block has-error';	with: each ]