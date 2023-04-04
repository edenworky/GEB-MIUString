Class {
	#name : #MUIStringFinderSearchResult,
	#superclass : #Object,
	#instVars : [
		'steps',
		'target',
		'wasSuccessful'
	],
	#category : #'GEB-MIUString'
}

{ #category : #constructor }
MUIStringFinderSearchResult class >> arrivingAt: target via: steps [

	^ self new
		  target: target;
		  steps: steps
]

{ #category : #accessing }
MUIStringFinderSearchResult >> steps [

	^ steps
]

{ #category : #accessing }
MUIStringFinderSearchResult >> steps: anObject [

	steps := anObject
]

{ #category : #accessing }
MUIStringFinderSearchResult >> target [

	^ target
]

{ #category : #accessing }
MUIStringFinderSearchResult >> target: anObject [

	target := anObject
]

{ #category : #accessing }
MUIStringFinderSearchResult >> wasSuccessful [

	self subclassResponsibility
]
