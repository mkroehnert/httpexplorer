action
performRequest
	responseModel text: ''.
	httpClient
		url: urlModel pendingText asString;
		contents: bodyModel text asString;
		execute.
	requestModel text: (String streamContents: [ :s | httpClient request writeOn: s ]).
	responseModel text: (String streamContents: [ :s | httpClient response writeOn: s ]).
