# datadog-app-service-extension
Repo for installing an App Service Extension for Datadog

## Instructions

### Set up the agent host
Set up a host running the Datadog agent, like so: https://docs.datadoghq.com/tracing/send_traces/. Grant that host a public IP or otherwise make the host accessible on port 8126 from the Azure app service. Make sure the agent has attribute "apm_non_local_traffic: true" (under apm_config).

### Add the Datadog nuget package to your application
Add the same version as is used in this extension (currently 1.6.0). See here: https://www.nuget.org/packages/Datadog.Trace.ClrProfiler.Managed

### Set the environment variables
Go to your app service and click on "Configuration." Add new variables by clicking "New application setting" for the following:

1. **DD_AGENT_HOST** pointing to the accessible IP for the machine in the step above ("Set up the agent host"). 
1. **DD_API_KEY** pointing to your Datadog API key (From the Datadog portal: Integrations -> APIs -> API Keys)
1. **DD_ENV** set to the environment name you want to appear in Datadog
1. **DD_SERVICE_NAME** pointing to the service name you want to appear in Datadog

### Add the extension
From the left pane of the app service, select "Extensions." Click on "Add" and select the ".NET Core Datadog APM x86" for an app that is running .Net Core in a non-self-contained application. Accept the license terms and select "OK" to install. Restart the application for this to take effect (and for any of the above environment variable changes to take effect).

You probably also need to uninstall any other APM extensions you have installed on the app service.
