Class {
	#name : #MIUString,
	#superclass : #Object,
	#instVars : [
		'string'
	],
	#category : #'GEB-MIUString'
}

{ #category : #'instance creation' }
MIUString class >> new: string [
	^ self new string: string
]

{ #category : #testing }
MIUString >> isTransformable [

	^ string = 'I'
]

{ #category : #accessing }
MIUString >> string: anObject [

	string := anObject
]
