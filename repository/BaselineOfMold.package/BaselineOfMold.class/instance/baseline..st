baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec 
			package: 'Mold-Core'.
		spec 
			package: 'Mold-Examples' with: [ spec requires: #('Mold-Core') ].
		spec 
			package: 'Mold-Tests' with: [ spec requires: #('Mold-Core') ].
		spec 
			group: 'default' with: #('Core' 'Examples' 'Tests');
			group: 'Core' with: #('Mold-Core');
			group: 'Examples' with: #('Mold-Examples');
			group: 'Tests' with: #('Mold-Tests')].
