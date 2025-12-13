@ECHO OFF
setlocal enabledelayedexpansion
title Your average batch script
set count=0
set /p prompt="write something goofy or smth> "
set /p game="write the name of a game or series> "
:go
set /a count+=1
echo the !prompt! level in !game!: !count!
goto go