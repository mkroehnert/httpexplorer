accessing
data
	"returns a Dictionary with 'header name' -> 'value' mapping"
	| headers |
	
	headers := Dictionary new.
	self headerTableModel roots do: [ :each |
		each first ifNotEmpty: [
			headers at: each first put: each second]].
	^ headers.