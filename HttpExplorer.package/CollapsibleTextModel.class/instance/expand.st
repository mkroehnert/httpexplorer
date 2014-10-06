action
expand
	self isExpanded ifFalse: [
		self buildExpandedLayout.
		whenExpandedBlock value ]