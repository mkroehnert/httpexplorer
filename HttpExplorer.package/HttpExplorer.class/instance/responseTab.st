accessing
responseTab
	| tab |
	
	tab := self newTab.
	tab
		label: 'Response';
		icon: Smalltalk ui icons nautilusIcon;
		closeable: false;
		model: self responseModel.
			
	^ tab