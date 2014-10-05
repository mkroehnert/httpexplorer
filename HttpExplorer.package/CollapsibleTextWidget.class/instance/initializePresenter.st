initialization
initializePresenter
	self buttonModel
		action: [ 
			self isExpanded
				ifTrue: [ self collapse ]
				ifFalse: [ self expand ] ]