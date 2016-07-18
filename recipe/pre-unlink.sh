# Check to make sure we can install the ipyparallel widget.
("${PREFIX}/bin/jupyter" serverextension --version > /dev/null 2>&1) || exit 0
("${PREFIX}/bin/jupyter" nbextension --version > /dev/null 2>&1) || exit 0

# Install the ipyparallel widget.
"${PREFIX}/bin/jupyter" nbextension disable --sys-prefix --py ipyparallel > /dev/null 2>&1
"${PREFIX}/bin/jupyter" nbextension uninstall --sys-prefix --py ipyparallel > /dev/null 2>&1
"${PREFIX}/bin/jupyter" serverextension disable --sys-prefix --py ipyparallel > /dev/null 2>&1
