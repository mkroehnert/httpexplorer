private
buildExpandedLayout
	self widgets removeAll.

	self instantiateModels: #(
		buttonModel ButtonModel
		textModel TextModel).
	
	self needRebuild: false.
	self buttonModel needRebuild: false.
	self buttonModel label: self expandedText.
	self buildWithSpecLayout: self expandedLayout.
	self initializeFocusOrder.
	self initializePresenter.
	self isExpanded: true.