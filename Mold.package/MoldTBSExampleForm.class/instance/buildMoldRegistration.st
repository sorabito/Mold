initialization
buildMoldRegistration
	|  email confirmEmail password entityName username |
	mold := Mold new.

	entityName := mold stringField
		key: #entityName;
		on: #entityName of: self options;
		label: 'Your First Name and Last Name:' seasideTranslated;
		example: 'Firstname Lastname';
		beRequired;
		addCondition: [ :val | val matchesRegex: '\w+ \w+' ]
			labeled: 
				[ :wrong | 
				('Please enter your first and last name. I couldn''t find a space in {1}' seasideTranslated) format: { wrong } ].

	username := mold stringField
		key: #username;
		on: #username of: self options;
		label: 'Your Login:' seasideTranslated;
		example: 'user1234';
		beRequired;
		addCondition: [ :val | val matchesRegex: '\w+' ]
			labeled: 
				[ :wrong | ('Please enter a lowing as a single word. I have issues with: {1}' seasideTranslated) format: { wrong } ].
	email := mold emailField
		key: #eMail;
		on: #eMail of: self options;
		label: 'Email Address:' seasideTranslated;
		example: 'john@mail.com';
		beRequired.
	confirmEmail := mold emailField
		key: #confirmEmail;
		label: 'Confirm Email:' seasideTranslated;
		example: 'john@mail.com';
		beRequired.
	email 
		addCondition: [ :input | input = confirmEmail input ]
		labeled: 'Email addresses did not match.' seasideTranslated.
	confirmEmail 
		addCondition: [ :input | input = email input ]
		labeled: 'Email addresses did not match.' seasideTranslated.
	
	password := mold passwordField 
		key: #password;
		on: #password of: self options;	
		label: 'Password:' seasideTranslated;
		example: 'az$45Ac!';
		beRequired.
		
	
"	password
		addCondition: [ :val | val matchesRegex: '(?=^.{8,}$)(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s)[0-9a-zA-Z!@#$%^&*()]*$' ]
		labeled: 'Password is not strong enough. 8 chars min, 1uppercase, 1 lowercase, 1digit.' seasideTranslated.
"	
