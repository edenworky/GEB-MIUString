Class {
	#name : #MIUStringTest,
	#superclass : #TestCase,
	#category : #'GEB-MIUString-Tests'
}

{ #category : #tests }
MIUStringTest >> testIMCannotBeTransformed [

	| mui |
	mui := MIUString new: 'IM'.
	self assert: mui isTransformable equals: false
]

{ #category : #tests }
MIUStringTest >> testTransformIToIU [

	| mui |
	mui := MIUString new: 'I'.
	self assert: mui isTransformable equals: true

]
