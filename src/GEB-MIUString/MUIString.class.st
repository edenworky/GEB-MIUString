Class {
	#name : #MUIString,
	#superclass : #Object,
	#category : #'GEB-MIUString'
}

{ #category : #'instance creation' }
MUIString class >> new: string [
	^ self new
]

{ #category : #testing }
MUIString >> isTransformable [

	^ false
]
