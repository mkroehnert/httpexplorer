specs
defaultSpec

	<spec>
	^ SpecLayout composed
		newColumn: [ :mainColumn | mainColumn
			newRow: [ :inputRow | inputRow 
				add: #buttonModel]
			height: 26;
			newRow: [ :inputRow | inputRow 
				add: #headerTableModel]
		];
		yourself.