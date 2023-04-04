Class {
	#name : #MUIStringFinderTest,
	#superclass : #TestCase,
	#category : #'GEB-MIUString-Tests'
}

{ #category : #tests }
MUIStringFinderTest >> testFailToFindMUGivenIM [

	| finder search |
	finder := MUIStringFinder lookingFor: 'MU' startingFrom: 'IM'.
	search := finder search.
	self deny: search wasSuccessful.
	self assert: search target equals: 'MU'.
	self assert: search steps size equals: 0
]

{ #category : #tests }
MUIStringFinderTest >> testFindIMGivenIM [

	| finder search |
	finder := MUIStringFinder lookingFor: 'IM' startingFrom: 'IM'.
	search := finder search.
	self assert: search wasSuccessful.
	self assert: search target equals: 'IM'.
	self assert: search steps size equals: 0
]
