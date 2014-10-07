private
deleteHeaderButtonModel: node
	^ (ButtonModel new
		label: 'X';
		action: [ self headerTableModel roots: (self headerTableModel roots reject: [ :element | element == node content ]) ])
		buildWithSpec hResizing: #spaceFill