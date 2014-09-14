initialization
initializeFocusOrder

	self focusOrder
		add: urlModel;
		add: requestSelectModel;
		add: followRedirectModel;
		add: sendModel.
