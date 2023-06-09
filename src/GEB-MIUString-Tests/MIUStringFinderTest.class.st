Class {
	#name : #MIUStringFinderTest,
	#superclass : #TestCase,
	#category : #'GEB-MIUString-Tests'
}

{ #category : #tests }
MIUStringFinderTest >> testFailToFindMUGivenIM [

	| finder search |
	finder := MIUStringFinder lookingFor: 'MU' startingFrom: 'IM'.
	search := finder search.
	self deny: search wasSuccessful.
	self assert: search target equals: 'MU'.
	self assert: search steps asArray equals: #()
]

{ #category : #tests }
MIUStringFinderTest >> testFindIMGivenIM [

	| finder search |
	finder := MIUStringFinder lookingFor: 'IM' startingFrom: 'IM'.
	search := finder search.
	self assert: search wasSuccessful.
	self assert: search target equals: 'IM'.
	self assert: search steps size equals: 0
]

{ #category : #tests }
MIUStringFinderTest >> testFindIUGivenI [

	| finder search |
	finder := MIUStringFinder lookingFor: 'IU' startingFrom: 'I'.
	search := finder search.
	self assert: search wasSuccessful.
	self assert: search steps asArray equals: #('IU')
]

{ #category : #tests }
MIUStringFinderTest >> testIUThruIFromIUU [

	| finder search |
	finder := MIUStringFinder lookingFor: 'IU' startingFrom: 'IUU'.
	search := finder search.
	self assert: search wasSuccessful.
	self assert: search steps asArray equals: #( 'I' 'IU' )
]
