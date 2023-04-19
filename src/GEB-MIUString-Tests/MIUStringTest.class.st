Class {
	#name : #MIUStringTest,
	#superclass : #TestCase,
	#category : #'GEB-MIUString-Tests'
}

{ #category : #tests }
MIUStringTest >> testIMCannotBeTransformed [

	| miu |
	miu := MIUString new: 'IM'.
	self assert: miu isTransformable equals: false
]

{ #category : #tests }
MIUStringTest >> testTransformIToIU [

	| miu |
	miu := MIUString new: 'I'.
	self assert: miu isTransformable equals: true.
	self assert: miu relevantTransformationRules equals: #(3)

]
