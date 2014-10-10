initialization
initializeWidgets

	self instantiateModels: #(
		urlModel TextInputFieldModel
		requestSelectModel DropListModel
		followRedirectModel CheckBoxModel
		sendModel ButtonModel
		headerModel HttpHeaderModel
		bodyModel CollapsibleTextModel
		tabManager TabManagerModel
		requestModel TextModel
		responseModel TextModel).

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
	
	bodyModel
		collapsedText: 'Add Request Body';
		expandedText: 'Remove Request Body'.
	
	tabManager
		addTab: self requestTab;
		addTab: self responseTab.
	
	httpClient method: requestSelectModel selectedItem asSymbol.
	
	self initializeFocusOrder.