(
	ECHO Uninstalling Datadog APM

	REM Copy the initial version of the agent
	IF EXIST "D:\home\SiteExtensions\Datadog" (
		ECHO Removing directory D:\home\SiteExtensions\Datadog
		RMDIR /Q /S "D:\home\SiteExtensions\Datadog"
	)

) > install.log