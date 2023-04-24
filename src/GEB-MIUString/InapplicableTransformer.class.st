"
I transform MIU strings never and change nothing about them.
"
Class {
	#name : #InapplicableTransformer,
	#superclass : #Transformer,
	#category : #'GEB-MIUString'
}

{ #category : #testing }
InapplicableTransformer >> isApplicableTo: miu [
	^ false
]
