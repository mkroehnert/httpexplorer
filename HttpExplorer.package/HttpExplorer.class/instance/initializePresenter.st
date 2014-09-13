initialization
initializePresenter

	sendModel action: [ Transcript show: 'Button Pushed' ].
	followRedirectModel activationAction: [  ].
	followRedirectModel desactivationAction: [  ].
	requestSelectModel whenSelectedItemChanged: [ :item | ].