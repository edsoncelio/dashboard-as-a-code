# dashboard as a code with grafonnet/jsonnet
Demo about how to create/build/deploy dashboards to grafana using jsonnet and grafonnet.
## Requirements
* [grafonnet-lib](https://github.com/grafana/grafonnet-lib)
* [jsonnet](https://github.com/google/jsonnet)

## Examples
* `templates/logs/dash_loki_kubernetes.jsonnet`: dashboard to view logs collected by loki from kubernetes
* `templates/samples/dash_sample`: sample dash with a text panel

## Usage

### To run locally

1. Clone the `grafonnet` repository:   
`git clone https://github.com/grafana/grafonnet-lib.git`

Your current directory would look something like this:
```
.
├── grafonnet-lib
└── dashboard_logs.jsonnet
```

2. To build a dashboard from a jsonnet file:   
`jsonnet -J grafonnet-lib templates/samples/dash_sample.jsonnet`

This will generate a `.json` file that can be used to [import into Grafana](https://grafana.com/docs/grafana/latest/dashboards/export-import/#importing-a-dashboard)

### To run inside the pipeline 
This repo use github action to build the .json file, check the [github-actions.yml](.github/workflows/github-actions.yml) file.
## Reference
* https://grafana.github.io/grafonnet-lib/
* https://grafana.com/blog/2020/02/26/how-to-configure-grafana-as-code/
