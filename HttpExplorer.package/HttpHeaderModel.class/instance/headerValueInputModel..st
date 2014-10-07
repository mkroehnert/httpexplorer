private
headerValueInputModel: node
	^ (TextInputFieldModel new
		text: node content second asString;
		ghostText: 'Header Value';
		autoAccept: true;
		whenTextChanged: [ :text | node content at: 2 put: text asString ]) buildWithSpec hResizing: #spaceFill