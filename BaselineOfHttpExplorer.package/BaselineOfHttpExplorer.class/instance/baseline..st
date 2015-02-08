baseline
baseline: spec
    <baseline>
    spec
        package: 'HttpExplorer' with: [spec requires: 'ZincHTTPComponents Core'];
        yourself.
    spec project: 'ZincHTTPComponents Core' with: [
                spec
                        className: 'ConfigurationOfZincHTTPComponents';
                        repository: 'http://mc.stfx.eu/ZincHTTPComponents';
                        loads: #('Core');
				version: #stable].
    spec
        group: 'Core' with: #('HttpExplorer');
        group: 'default' with: #('Core');
        yourself