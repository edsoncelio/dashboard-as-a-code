local grafana = import 'grafonnet/grafana.libsonnet';
local dashboard = grafana.dashboard;
local text = grafana.text;

dashboard.new(
    'Sample dashboard',
)

.addPanel(
    text.new(
        '',
        'This is a sample dashboard',
    ),
    gridPos={
    x: 0,
    y: 0,
    w: 24,
    h: 3,
  }
)
