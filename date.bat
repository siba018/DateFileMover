@echo off 

setlocal enabledelayedexpansion
for /F  %%i in ('dir /B /S') do (
	set str=%%~ti
	set str=!str:~0,10!
	set str=!str:/=-!
	echo !str!
	mkdir !str! > NUL 2>&1
	move %%i !str!
)
endlocal
cd ..
