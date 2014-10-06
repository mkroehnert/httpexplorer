accessing
expandedText: anObject
	expandedText := anObject.
	self isExpanded ifTrue: [ 
		self buttonModel label: expandedText ]