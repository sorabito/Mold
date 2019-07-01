rendering
renderContentOn: html 
	|  formTag |
	self renderFormatChoicesOn: html.
	html paragraph: 'Mold is a tool for building forms. It can render the forms for you, or you can render them yourself.'.

	html tbsColumn
		 mediumSize: 6; 
		mediumPush: 3;
		with: [ 
	html tbsWell: [ 
	format = #bootstraps ifTrue: [ formTag := html tbsForm beHorizontal ] ifFalse: [ formTag := html form].
	formTag with:
		[ mold canvas: html.
		format = #table 
			ifTrue: [ html table: [ mold tableRows ] ]
			ifFalse: 
				[ format = #paragraphs 
					ifTrue: [ mold paragraphs ]
					ifFalse: [ format = #bootstraps
						ifTrue: [  mold bootstraps ]
						ifFalse: [ self renderCustomOn: html ] 
						]
					].
		html submitButton
			bePrimary;
			value: 'Submit Form' seasideTranslated;
			callback: [ mold isValid ifTrue: [ mold save. mold inspect. options inspect ] ].
			
		html cancelButton
			beDefault;
			value: 'Cancel' seasideTranslated;
			callback: [ mold isValid ifTrue: [ mold inspect ] ] 
		]
		]	
		]	 
		