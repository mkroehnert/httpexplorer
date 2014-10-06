initialization
initializeWidgets

	self instantiateModels: #(
		buttonModel ButtonModel).
	
	self buttonModel label: self collapsedText.
	self isExpanded: false.