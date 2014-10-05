action
buildCollapsedLayout
	self widgets removeAll.

	self instantiateModels: #(
		buttonModel ButtonModel).
	
	self needRebuild: false.
	self buttonModel needRebuild: false.
	self buttonModel label: self collapsedText.
	self buildWithSpecLayout: self collapsedLayout.
	self initializePresenter.
	self isExpanded: false.