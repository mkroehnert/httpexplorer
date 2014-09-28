accessing
requestTab
	| tab |
	
	tab := self newTab.
	tab
		label: 'Request';
		icon: Smalltalk ui icons nautilusIcon;
		closeable: false;
		model: self requestModel.
			
	^ tab