action
performRequest
	responseModel text: ''.
	httpClient request headers: ZnHeaders new.
	httpClient
		url: urlModel pendingText asString;
		contents: bodyModel text asString;
		headerAddAll: headerModel data;
		execute.
	requestModel text: (String streamContents: [ :s | httpClient request writeOn: s ]).
	responseModel text: (String streamContents: [ :s | httpClient response writeOn: s ]).
