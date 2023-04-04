Class {
	#name : #MIUStringFinder,
	#superclass : #Object,
	#instVars : [
		'target',
		'origin'
	],
	#category : #'GEB-MIUString'
}

{ #category : #constructor }
MIUStringFinder class >> lookingFor: target startingFrom: origin [

	^ self new
		  origin: origin;
		  target: target
]

{ #category : #accessing }
MIUStringFinder >> origin [

	^ origin
]

{ #category : #accessing }
MIUStringFinder >> origin: anObject [

	origin := anObject
]

{ #category : #operations }
MIUStringFinder >> search [

	| searchResult |
	searchResult := target = origin
		                ifTrue: MIUStringFinderSuccessSearchResult
		                ifFalse: MIUStringFinderFailureSearchResult.
	^ searchResult
		  arrivingAt: target
		  via: OrderedCollection new
]

{ #category : #accessing }
MIUStringFinder >> target [

	^ target
]

{ #category : #accessing }
MIUStringFinder >> target: anObject [

	target := anObject
]
