initialization
initializePresenter
	sendModel action: [ self performRequest ].
	urlModel acceptBlock: [ self performRequest  ].
	followRedirectModel whenActivatedDo: [ httpClient followRedirects: true ].
	followRedirectModel whenDesactivatedDo: [ httpClient followRedirects: false ].
	requestSelectModel whenSelectedItemChanged: [ :item | httpClient method: item asSymbol ]