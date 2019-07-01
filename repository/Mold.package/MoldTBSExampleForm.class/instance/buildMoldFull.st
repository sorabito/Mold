initialization
buildMoldFull
	| name email confirmEmail |
	mold := Mold new.
	name := mold stringField
		key: #name;
		on: #username of: self options;
		label: 'Your Name:' seasideTranslated;
		beRequired;
		addCondition: [ :val | val matchesRegex: '\w+ \w+' ]
			labeled: 
				[ :wrong | 
				('Please enter your first and last name. I couldn''t find a space in {1}' seasideTranslated) format: { wrong } ].
	email := mold emailField
		key: #email;
		on: #email of: self options;
		label: 'Email Address:' seasideTranslated.
	confirmEmail := mold emailField
		key: #confirmEmail;
		label: 'Confirm Email:' seasideTranslated.
	email 
		addCondition: [ :input | input = confirmEmail input ]
		labeled: 'Email addresses did not match.' seasideTranslated.
	confirmEmail 
		addCondition: [ :input | input = email input ]
		labeled: 'Email addresses did not match.' seasideTranslated.
	mold textField
		key: #about;
		label: 'Please tell us more about yourself.' seasideTranslated;
		beRequired;
		customize: 
			[ :textarea | 
			textarea
				rows: 5;
				columns: 60 ].
	mold checkboxField
		key: #spamMe;
		label: 'Yes, please sign me up for the email newsletter!' seasideTranslated;
		addCondition: [ :val | name isValid not or: [ val or: [ name value first = $K ] ] ]
			labeled: 'Sorry, you may not opt out of our spam unless your first name starts with K.' seasideTranslated;
		value: true
			 