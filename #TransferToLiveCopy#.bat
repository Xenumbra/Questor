@Echo off
set innerspacedotnetdirectory="..\..\innerspace\.net programs\"

copy /y .\output\*.exe %innerspacedotnetdirectory% 
copy /y .\output\*.dll %innerspacedotnetdirectory% 
::
:: only copy invtypes.xml if one does not already exist (it contains pricing data)
if not exist %innerspacedotnetdirectory%invtypes.xml copy /y .\output\invtypes.xml %innerspacedotnetdirectory%
::
:: always copy the template settings.xml file to dest
copy /y .\output\settings.xml %innerspacedotnetdirectory%
::
::only copy ShipTargetValues.xml if one does not already exist (it contains targeting data)
if not exist %innerspacedotnetdirectory%ShipTargetValues.xml copy /y .\output\ShipTargetValues.xml %innerspacedotnetdirectory%  
::
:: always copy factions.xml
copy /y .\output\factions.xml %innerspacedotnetdirectory%

pause