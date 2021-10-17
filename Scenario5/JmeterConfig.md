# Steps to send live load testing metrics to InfluxDB using Jmeter

## Download the plugin in Jmeter

1. Open jmeter_demo.jmx in Jmeter GUI and click on plugins, search for plugin named "Azure Bakend Listener". Install this plugin and restart Jmeter.
2. Go to listeners and select "Backend Listeners". Configure the backend listener for influxdb like the following:

![image](https://user-images.githubusercontent.com/29423983/137615292-06f178d3-7f21-4c0c-a854-c2221486dc5e.png)

Configure your influxdb url in the 2nd row of config.
Select backend Listener implementation as influxdb, other options include Graphite and Azure Backend (Application Insights).
Other ways to send metrics to custom destinations like Event hub, other tools are:

1. Create custom Listener.
2. Write results in a file and export it to event hub, other APM tool with an exporter.

Example Integrations:

1. AppD: https://docplayer.net/62851982-Jmeter-integration-with-appdynamics.html
2. Dynatrace: https://www.dynatrace.com/support/help/setup-and-configuration/integrations/third-party-integrations/test-automation-frameworks/dynatrace-and-jmeter-integration/
3. ELK: https://medium.com/@anthony.gauthier325/jmeter-elasticsearch-live-monitoring-c895c843c51e
4. Prometheus: https://grafana.com/grafana/dashboards/2492
