initialization
initializePresenter

	sendModel action: [
		resultModel text: ''.
		httpClient url: urlModel pendingText asString; execute.
		resultModel text: (String streamContents: [ :s | httpClient response writeOn: s ]). ].
	followRedirectModel whenActivatedDo: [ httpClient followRedirects: true ].
	followRedirectModel whenDesactivatedDo: [ httpClient followRedirects: false ].
	requestSelectModel whenSelectedItemChanged: [ :item | httpClient method: item asSymbol ].