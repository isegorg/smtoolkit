Class {
	#name : #BaselineOfSmToolkit,
	#superclass : #BaselineOf,
	#category : #BaselineOfSmToolkit
}

{ #category : #loading }
BaselineOfSmToolkit class >> loadLepiter [
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'smtoolkit' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [
			self inform: 'Repository not found.' ]
]

{ #category : #baseline }
BaselineOfSmToolkit >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'SmToolkit-Core'
		]
]
