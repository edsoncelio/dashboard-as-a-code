# Dashboard as a Code
Proof of Concept to version dashboards in Grafana


## Requirements
* [grafonnet-lib](https://github.com/grafana/grafonnet-lib)
* [jsonnet](https://github.com/google/jsonnet)

## Usage
To build a dashboard from a jsonnet file:   
`jsonnet -J grafonnet-lib dashboard_logs.jsonnet`
