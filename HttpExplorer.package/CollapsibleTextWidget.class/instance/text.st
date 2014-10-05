accessing
text
	^ self isExpanded
		ifTrue: [
			self textModel accept.
			self textModel text]
		ifFalse: [ '' ]