Class {
	#name : #MIUStringFinderSearchResult,
	#superclass : #Object,
	#instVars : [
		'steps',
		'target',
		'wasSuccessful'
	],
	#category : #'GEB-MIUString'
}

{ #category : #constructor }
MIUStringFinderSearchResult class >> arrivingAt: target via: steps [

	^ self new
		  target: target;
		  steps: steps
]

{ #category : #accessing }
MIUStringFinderSearchResult >> steps [

	^ steps
]

{ #category : #accessing }
MIUStringFinderSearchResult >> steps: anObject [

	steps := anObject
]

{ #category : #accessing }
MIUStringFinderSearchResult >> target [

	^ target
]

{ #category : #accessing }
MIUStringFinderSearchResult >> target: anObject [

	target := anObject
]

{ #category : #accessing }
MIUStringFinderSearchResult >> wasSuccessful [

	self subclassResponsibility
]
