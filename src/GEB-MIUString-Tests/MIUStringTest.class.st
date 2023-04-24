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
MIUStringTest >> testMayNotTransformViaInapplicableTransformer [
	
	| miu |
	miu := MIUString new: 'I'.
	self should: [ miu transformVia: 4 ] raise: InapplicableTransformer
]

{ #category : #tests }
MIUStringTest >> testTransformIToIU [

	| miu |
	miu := MIUString new: 'I'.
	self assert: miu isTransformable.
	self assert: miu applicableTransformers equals: #( 1 ).
	miu := miu transformVia: 1.
	self assert: miu string equals: 'IU'
]

{ #category : #tests }
MIUStringTest >> testTransformUUToEmptyString [

	| miu |
	miu := MIUString new: 'UU'.
	self assert: miu isTransformable.
	self assert: miu applicableTransformers equals: #( 4 ).
	miu := miu transformVia: 4.
	self assert: miu string equals: ''
]
