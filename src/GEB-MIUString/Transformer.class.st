"
My subclasses transform MIU strings under particular conditions.
"
Class {
	#name : #Transformer,
	#superclass : #Object,
	#category : #'GEB-MIUString'
}

{ #category : #testing }
Transformer >> isApplicableTo: miu [
	self subclassResponsibility
]

{ #category : #accessing }
Transformer >> transform: miu [
	self subclassResponsibility
]
