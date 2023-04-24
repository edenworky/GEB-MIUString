Class {
	#name : #DropUUWhenItOccursAnywhereTransformer,
	#superclass : #Transformer,
	#category : #'GEB-MIUString'
}

{ #category : #testing }
DropUUWhenItOccursAnywhereTransformer >> isApplicableTo: miu [
	^ '*UU*' match: miu
]

{ #category : #accessing }
DropUUWhenItOccursAnywhereTransformer >> transform: miu [
	^ miu copyReplaceAll: 'UU' with: ''
]
