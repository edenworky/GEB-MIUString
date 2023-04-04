Class {
	#name : #MUIStringFinder,
	#superclass : #Object,
	#instVars : [
		'target',
		'origin'
	],
	#category : #'GEB-MIUString'
}

{ #category : #constructor }
MUIStringFinder class >> lookingFor: target startingFrom: origin [

	^ self new
		  origin: origin;
		  target: target
]

{ #category : #accessing }
MUIStringFinder >> origin [

	^ origin
]

{ #category : #accessing }
MUIStringFinder >> origin: anObject [

	origin := anObject
]

{ #category : #operations }
MUIStringFinder >> search [

	| searchResult |
	searchResult := target = origin
		                ifTrue: MUIStringFinderSuccessSearchResult
		                ifFalse: MUIStringFinderFailureSearchResult.
	^ searchResult
		  arrivingAt: target
		  via: OrderedCollection new
]

{ #category : #accessing }
MUIStringFinder >> target [

	^ target
]

{ #category : #accessing }
MUIStringFinder >> target: anObject [

	target := anObject
]
