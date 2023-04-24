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

	| searchResult steps pointer miuString |
	miuString := MIUString new: origin.
	steps := OrderedCollection with: origin.
	pointer := MIUStringSearchPointer
		           targeting: target
		           havingTakenSteps: steps.

	[ pointer isPointingAtTarget not and: miuString isTransformable ]
		whileTrue: [
			miuString := miuString transformVia:
				             miuString applicableTransformers first.
			steps add: miuString string.
			pointer := MIUStringSearchPointer
				           targeting: target
				           havingTakenSteps: steps ].

	searchResult := pointer isPointingAtTarget
		                ifTrue: [ MIUStringFinderSuccessSearchResult ]
		                ifFalse: [ MIUStringFinderFailureSearchResult ].
	steps removeFirst.
	^ searchResult arrivingAt: target via: steps
]

{ #category : #accessing }
MIUStringFinder >> target [

	^ target
]

{ #category : #accessing }
MIUStringFinder >> target: anObject [

	target := anObject
]
