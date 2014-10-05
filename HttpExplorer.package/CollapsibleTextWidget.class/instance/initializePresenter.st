initialization
initializePresenter

	self buttonModel action: [
		self isExpanded
			ifTrue: [
				self buildCollapsedLayout.
				whenCollapsedBlock value]
			ifFalse: [ 
				self buildExpandedLayout.
				whenExpandedBlock value]].