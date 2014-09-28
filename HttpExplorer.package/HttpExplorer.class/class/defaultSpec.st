as yet unclassified
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
			add: #tabManager.
		];
		yourself.