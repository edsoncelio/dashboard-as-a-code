
local panelTitle = "My logs dashboard";
local labelEnv = "dev-hello-env";

local grafana = import 'grafonnet/grafana.libsonnet';
local dashboard = grafana.dashboard;
local template = grafana.template;
local logs = grafana.logPanel;
local prometheus = grafana.prometheus;
local loki = grafana.loki;

local logsInfo =
  logs.new(
    title=panelTitle,
    datasource='Loki',
  )
  .addTarget(
    loki.target(
      '{namespace_name="$namespace", pod_name="$pod"}'
    )
);

dashboard.new(
  'My logs dashboard',
  tags=['logs'],
  editable=false,
  time_from='now-30m',
  refresh='5s',
) 
.addTemplate(
  template.custom(
    'namespace',
    labelEnv,
    'null',
    includeAll=true,
  )
)
.addTemplate(
  template.new(
    'pod',
    'Prometheus',
    'label_values(container_network_receive_bytes_total{namespace=~"$namespace"},pod)',
    refresh='load',
    includeAll=true,

  )
)
.addPanels(
  [
    logsInfo {gridPos: {h: 23, w: 24,x: 0,y: 0}},
  ]
)




