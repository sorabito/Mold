rendering-private
renderDynamicLabelOf: tag id: id on: html
	dynamicLabel
		ifNotNil: [ 
			| labelId |
			labelId := self dynamicLabelIdFor: id.
			tag
				onFocus: 'if(this.value=="") $("' , labelId , '").className="active"';
				onKeyPress: '$("' , labelId , '").className="hidden"';
				onKeyUp: 'if(this.value=="") $("' , labelId , '").className="active"';
				onBlur: 'if(this.value=="") $("' , labelId , '").className="inactive"' ].
	
	