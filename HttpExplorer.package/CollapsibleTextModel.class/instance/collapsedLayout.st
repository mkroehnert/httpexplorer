private
collapsedLayout
	^ SpecLayout composed
		newColumn: [ :mainColumn | mainColumn
			newRow: [ :inputRow | inputRow 
				add: #buttonModel]
			height: 26.
		];
		yourself.