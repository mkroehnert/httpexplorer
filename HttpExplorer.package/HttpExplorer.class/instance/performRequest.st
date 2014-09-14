action
performRequest
	resultModel text: ''.
	httpClient
		url: urlModel pendingText asString;
		execute.
	resultModel text: (String streamContents: [ :s | httpClient response writeOn: s ])