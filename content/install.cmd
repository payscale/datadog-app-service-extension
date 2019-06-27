(
	ECHO Installing Datadog APM

	REM Copy the initial version of the agent
	IF NOT EXIST "D:\home\SiteExtensions\Datadog" (
		ECHO Creating directory D:\home\SiteExtensions\Datadog
		MKDIR "D:\home\SiteExtensions\Datadog"
	)

    ECHO Copying over files from .\Agent\x86
	XCOPY .\Agent\x86\*.* "D:\home\SiteExtensions\Datadog" /f /s /y

) > install.log