HttpExplorer
----

HttpExplorer is a [Pharo](http://pharo.org) application for examining HTTP requests and responses.
It is inspired by the Mac OS X application HTTP Client (http://ditchnet.org/httpclient/).

How to get it
----

1. Download and open a [Pharo 4 VM + image](http://pharo.org/download)
2. Copy the following script into a Workspace or Playground and evaluate it (select all text, followed by `Ctrl/Cmd + d`)
  
  ```
Metacello new
baseline:'HttpExplorer';
repository:'github://mkroehnert/httpexplorer:master';
get.

Metacello new
baseline:'HttpExplorer';
repository:'github://mkroehnert/httpexplorer:master';
load.

HttpExplorer create
```


Developing
----

1. [Pharo 4 VM + image](http://pharo.org/download)
2. Install GitFileTree
  
  ```
Gofer new
    url: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo40/main';
    configurationOf: 'GitFileTree';
    loadStable.
```

3. Load HttpExplorer code (works only if you are a collaborator of the HttpExplorer repository)
  
  * Open Monticello browser
  * Select `+Repository`
  * select `Remote git repository` and enter
  ```
MCFileTreeGitRemoteRepository
  location: 'git@github.com:mkroehnert/httpexplorer.git'
  name: 'HttpExplorer'
  subdirectory: ''
  branch: ''
```
  * Select the `HttpExplorer` package in the left pane of the Monticello browser and load it


License
----

HttpExplorer is released under the MIT license. All contributions made for inclusion are considered to be under MIT.
