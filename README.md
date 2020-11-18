# Dashboard as a Code
Proof of Concept to version dashboards in Grafana


## Requirements
* [grafonnet-lib](https://github.com/grafana/grafonnet-lib)
* [jsonnet](https://github.com/google/jsonnet)

## Usage
1. Clone the `grafonnet` repository:   
`git clone https://github.com/grafana/grafonnet-lib.git`

Your current directory would look something like this:
```
.
├── grafonnet-lib
└── dashboard_logs.jsonnet
```

2. To build a dashboard from a jsonnet file:   
`jsonnet -J grafonnet-lib dashboard_logs.jsonnet`

This will generate a `.json` file that can be used to [import into Grafana](https://grafana.com/docs/grafana/latest/dashboards/export-import/#importing-a-dashboard)

## Reference
* https://grafana.github.io/grafonnet-lib/
* https://grafana.com/blog/2020/02/26/how-to-configure-grafana-as-code/
