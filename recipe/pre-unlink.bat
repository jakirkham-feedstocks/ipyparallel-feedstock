:: Disable command output.
@echo off

:: Check to make sure we can install the ipyparallel widget.
"%PREFIX%\Scripts\jupyter" serverextension --version > NUL 2>&1 && if errorlevel 1 goto End
"%PREFIX%\Scripts\jupyter" nbextension --version > NUL 2>&1 && if errorlevel 1 goto End

:: Install the ipyparallel widget.
"%PREFIX%\Scripts\jupyter" nbextension disable --sys-prefix --py ipyparallel > NUL 2>&1 && if errorlevel 1 exit 1
"%PREFIX%\Scripts\jupyter" serverextension disable --sys-prefix --py ipyparallel > NUL 2>&1 && if errorlevel 1 exit 1

:End
exit 0
