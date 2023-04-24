Class {
	#name : #MIUStringSearchPointer,
	#superclass : #Object,
	#instVars : [
		'target',
		'steps'
	],
	#category : #'GEB-MIUString'
}

{ #category : #constructor }
MIUStringSearchPointer class >> targeting: aTarget havingTakenSteps: steps [

	^ self new
		  target: aTarget;
		  steps: steps
]

{ #category : #testing }
MIUStringSearchPointer >> isPointingAtTarget [
	^ target = (steps last)
]

{ #category : #accessing }
MIUStringSearchPointer >> steps: anObject [

	steps := anObject
]

{ #category : #accessing }
MIUStringSearchPointer >> target: anObject [

	target := anObject
]
