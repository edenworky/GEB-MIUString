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
	self assert: search steps size equals: 0
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
