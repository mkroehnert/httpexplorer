action
performRequest
	responseModel text: ''.
	httpClient
		url: urlModel pendingText asString;
		execute.
	responseModel text: (String streamContents: [ :s | httpClient response writeOn: s ]).
	requestModel text: (String streamContents: [ :s | httpClient request writeOn: s ])