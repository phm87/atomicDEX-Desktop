function Component()
{
   
}

Component.prototype.createOperations = function()
{
	component.createOperations();

    if (installer.value("os") === "win") {
		// Start Menu Shortcut
        component.addOperation("CreateShortcut", 
                               "@TargetDir@/smartfi-desktop.exe", 
                               "@StartMenuDir@/SmartFi Desktop.lnk",
                               "workingDirectory=@TargetDir@", 
                               "iconPath=@TargetDir@/atomicdex-desktop.ico", "iconId=0",
                               "description=Start SmartFi Desktop");
        
        // Desktop Shortcut
        component.addOperation("CreateShortcut", 
                            "@TargetDir@/smartfi-desktop.exe",
                            "@DesktopDir@/SmartFi Desktop.lnk",
                            "workingDirectory=@TargetDir@",
                            "iconPath=@TargetDir@/atomicdex-desktop.ico", "iconId=0",
                            "description=Start SmartFi Desktop");

		// Maintenance Tool Start Menu Shortcut
        component.addOperation("CreateShortcut", 
                               "@TargetDir@/smartfi-desktop.exe", 
                               "@StartMenuDir@/SmartFi Maintenance Tool.lnk",
                               "workingDirectory=@TargetDir@", 
                               "iconPath=@TargetDir@/atomicdex-desktop.ico", "iconId=0",
                               "description=Start SmartFi Maintenance Tool");
    }
}