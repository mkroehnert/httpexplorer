accessing
text
	^ self isExpanded
		ifTrue: [self textModel text]
		ifFalse: [ '' ]