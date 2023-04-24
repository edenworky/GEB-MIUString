"
I transform MIU strings that end with I by appending U to them.
"
Class {
	#name : #AppendUWhenEndingInITransformer,
	#superclass : #Transformer,
	#category : #'GEB-MIUString'
}

{ #category : #testing }
AppendUWhenEndingInITransformer >> isApplicableTo: miu [
	^ miu endsWith: #I
]

{ #category : #accessing }
AppendUWhenEndingInITransformer >> transform: miu [
	^ miu, 'U'
]
