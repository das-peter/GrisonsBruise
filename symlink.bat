cd drupal\sites\all
IF NOT EXIST "modules" GOTO NOT_FOUND_MODULES
IF EXIST "modules\" GOTO MODULES_EXISTS
DEL "modules"
:NOT_FOUND_MODULES
mklink /D "modules" "..\..\..\modules"
:MODULES_EXISTS
IF NOT EXIST "themes" GOTO NOT_FOUND_THEMES
IF EXIST "themes\" GOTO THEMES_EXISTS
DEL "themes"
:NOT_FOUND_THEMES
mklink /D "themes" "..\..\..\themes"
:THEMES_EXISTS
IF NOT EXIST "libraries" GOTO NOT_FOUND_LIBRARIES
IF EXIST "libraries\" GOTO LIBRARIES_EXISTS
DEL "libraries"
:NOT_FOUND_LIBRARIES
mklink /D "libraries" "..\..\..\libraries"
:LIBRARIES_EXISTS
cd ..\..\profiles
IF NOT EXIST  "custom" GOTO NOT_FOUND_PROFILE
IF EXIST  "custom\" GOTO PROFILE_EXISTS
DEL "custom"
:NOT_FOUND_PROFILE
mklink /D "custom" "..\..\profiles\custom"
:PROFILE_EXISTS
cd ..\..