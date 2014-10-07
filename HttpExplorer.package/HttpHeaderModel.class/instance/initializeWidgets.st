initialization
initializeWidgets
	self instantiateModels: #(
		buttonModel ButtonModel
		headerTableModel TreeModel).

	self buttonModel label: '+'.

	"http://forum.world.st/Spec-Grid-Table-Layout-td4719752.html"
	self headerTableModel roots: {}.
	self headerTableModel columns:
		(Array
			with:
				(TreeColumnModel new
					displayBlock: [ :node | self headerNameInputModel: node ];
					headerLabel: 'Header Name';
					resizable: false;
					yourself)
			with:
				(TreeColumnModel new
					displayBlock: [ :node | self headerValueInputModel: node ];
					headerLabel: 'Header Value';
					resizable: false;
					yourself)
			with:
				(TreeColumnModel new
					displayBlock: [ :node | self deleteHeaderButtonModel: node ];
					headerLabel: '';
					resizable: false;
					yourself))
