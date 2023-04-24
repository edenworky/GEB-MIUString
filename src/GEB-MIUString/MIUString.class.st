Class {
	#name : #MIUString,
	#superclass : #Object,
	#instVars : [
		'string'
	],
	#classInstVars : [
		'allTransformers'
	],
	#category : #'GEB-MIUString'
}

{ #category : #constants }
MIUString class >> allTransformers [

	allTransformers ifNil: [
		allTransformers := Array
			                   with: DudTransformer new
			                   with: DudTransformer new
			                   with: AppendUWhenEndingInITransformer new
			                   with: DudTransformer new ].
	^ allTransformers
]

{ #category : #'lookup by name' }
MIUString class >> nameForTransformer: transformer [
	^ self allTransformers indexOf: transformer
]

{ #category : #'instance creation' }
MIUString class >> new: string [
	^ self new string: string
]

{ #category : #'lookup by name' }
MIUString class >> transformerNamed: aTransformerName [
	
	^ self allTransformers at: aTransformerName
]

{ #category : #computing }
MIUString >> applicableTransformers [

	| transformers |
	transformers := self class allTransformers.
	transformers := transformers select: [ :t | t isApplicableTo: string ].
	transformers := transformers collect: [ :t | self class nameForTransformer: t ].
	^ transformers
]

{ #category : #testing }
MIUString >> isTransformable [

	^ self applicableTransformers isNotEmpty
]

{ #category : #accessing }
MIUString >> string [

	^ string
]

{ #category : #accessing }
MIUString >> string: anObject [

	string := anObject
]

{ #category : #transformation }
MIUString >> transformVia: aTransformerName [

	| transformer transformed |
	transformer := self class transformerNamed: aTransformerName.
	(transformer isApplicableTo: string) ifFalse: [
		InapplicableTransformer signal: aTransformerName ].
	transformed := transformer transform: string.
	^ self class new: transformed
]
