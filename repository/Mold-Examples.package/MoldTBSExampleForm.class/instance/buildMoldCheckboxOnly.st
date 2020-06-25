initialization
buildMoldCheckboxOnly
	|    |
	mold := Mold new.

	mold checkboxField
		key: #spamMe;
		label: 'Yes, please sign me up for the email newsletter!' seasideTranslated;
		addCondition: [ :val |  val ]
			labeled: 'Sorry, you may not opt out of our spam unless your first name starts with K.' seasideTranslated;
		value: true.