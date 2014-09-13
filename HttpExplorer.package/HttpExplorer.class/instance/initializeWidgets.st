initialization
initializeWidgets

	self instantiateModels: #(
		urlModel TextInputFieldModel
		requestSelectModel DropListModel
		followRedirectModel CheckBoxModel
		sendModel ButtonModel
		resultModel TextModel).
	urlModel ghostText: 'http(s)://'.
	sendModel label: 'Send'.
	followRedirectModel label: 'Follow Redirects';
		labelClickable: true;
		state: httpClient followRedirects.
	
	requestSelectModel items: {
		DropListItem named: 'GET' do: [].
		DropListItem named: 'POST' do: [].
		DropListItem named: 'PUT' do: [].
		DropListItem named: 'DELETE' do: [].
		DropListItem named: 'HEAD' do: [].
		DropListItem named: 'OPTIONS' do: [].
		DropListItem named: 'TRACE' do: [].
		DropListItem named: 'CONNECT' do: []
		}.
		
	httpClient method: requestSelectModel selectedItem label asSymbol.