private
headerNameInputModel: node
	^ (TextInputFieldModel new
		text: node content first asString;
		ghostText: 'Header Name';
		autoAccept: true;
		whenTextChanged: [ :text | node content at: 1 put: text asString ]) 			buildWithSpec
			hResizing: #spaceFill