accessing
collapsedText: anObject
	collapsedText := anObject.
	self isExpanded ifFalse: [ 
		self buttonModel label: collapsedText ]