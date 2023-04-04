Class {
	#name : #MUIStringTest,
	#superclass : #TestCase,
	#category : #'GEB-MIUString-Tests'
}

{ #category : #tests }
MUIStringTest >> testIMCannotBeTransformed [

	| mui |
	mui := MUIString new: 'IM'.
	self assert: mui isTransformable equals: false
]
