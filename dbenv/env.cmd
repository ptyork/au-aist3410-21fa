@echo off
if defined DB_ENV_PATH (
    set "PATH=%DB_ENV_PATH%"
    set DB_ENV_PATH=
    echo DBENV environment toggled OFF
) else (
    set "DB_ENV_PATH=%PATH%"
    set "PATH=%CD%\python;%CD%\vscode\bin;%CD%\mariadb\bin;%PATH%"
    echo DBENV environment toggled ON
)
