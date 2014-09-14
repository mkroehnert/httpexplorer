initialization
initializeWidgets

	self instantiateModels: #(
		urlModel TextInputFieldModel
		requestSelectModel DropListModel
		followRedirectModel CheckBoxModel
		sendModel ButtonModel
		resultModel TextModel).
	urlModel ghostText: 'http(s)://';
		acceptOnCR: true.

	sendModel label: 'Send'.
	followRedirectModel label: 'Follow Redirects';
		labelClickable: true;
		state: httpClient followRedirects.

	requestSelectModel
		addItemLabeled: 'GET' do: [];
		addItemLabeled: 'POST' do: [];
		addItemLabeled: 'PUT' do: [];
		addItemLabeled: 'DELETE' do: [];
		addItemLabeled: 'HEAD' do: [];
		addItemLabeled: 'OPTIONS' do: [];
		addItemLabeled: 'TRACE' do: [];
		addItemLabeled: 'CONNECT' do: [].
		
	httpClient method: requestSelectModel selectedItem asSymbol.