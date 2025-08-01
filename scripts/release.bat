call variables.cmd

set releasemods=%modpath%\release\mods
set bundleddir=%modpath%\release.bundled
set bundledmod=%bundleddir%\mods\modCROW
set localpath=content\scripts\local\crow
set bundledout=%bundledmod%\%localpath%

rmdir "%modpath%\release" /s /q
rmdir "%bundleddir%\" /s /q

mkdir "%releasemods%"
mkdir "%bundledout%"

:: here we compile the cahirc scripts, then construct the final mods by combining
:: the vanilla edits of the mods and their local scripts:
call compile

call :movetorelease modCrowCommon true
call :movetorelease modCrowCombatStamina true
call :movetorelease modCrowCombatDefense true
call :movetorelease modCrowCombatAggression true
call :movetorelease modCrowCombatEffects true
:: this one is not included in the bundled version as it is still a wip
call :movetorelease modCrowCombatRegeneration false

call compileblob

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::FUNCTIONS::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
goto:eof

:: moves the provided module to the normal release
::
:: the second parameters defines whether it should also be added to the bundled
:: release, which is a single mod folder with all local files in the same place
:movetorelease
  move "%modpath%\dist\%~1" "%releasemods%\"

  set shouldmovetobundled=%~2
  if "%shouldmovetobundled%" == "true" (
    call :movetobundled %~1
  )
goto:eof


:: moves the provided module to the bundled release
:movetobundled
  echo Moving %~1 to bundled release

  XCOPY "%releasemods%\%~1\%localpath%\" "%bundledout%"  /e /s /y
goto:eof