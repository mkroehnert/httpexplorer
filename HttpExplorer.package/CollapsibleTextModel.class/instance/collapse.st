action
collapse
	self isExpanded ifTrue: [
		self buildCollapsedLayout.
		whenCollapsedBlock value]