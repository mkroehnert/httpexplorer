specs
defaultSpec

	<spec>
	^ SpecLayout composed
		newColumn: [ :mainColumn | mainColumn
			newRow: [ :inputRow | inputRow 
				add: #urlModel] height: 26;
			newRow: [ :inputRow | inputRow 
				add: #requestSelectModel;
				add: #followRedirectModel;
				add: #sendModel] height: 26;
			newRow: [ :inputRow | inputRow 
				add: #headerModel] height: 150;
			newRow: [ :inputRow | inputRow 
				add: #bodyModel] height: 100;
			newRow: [ :inputRow | inputRow 
				add: #tabManager] height: 200
		];
		yourself.