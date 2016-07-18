# Check to make sure we can install the ipyparallel widget.
("${PREFIX}/bin/jupyter" serverextension --version > /dev/null 2>&1) || exit 0
("${PREFIX}/bin/jupyter" nbextension --version > /dev/null 2>&1) || exit 0

# Install the ipyparallel widget.
"${PREFIX}/bin/jupyter" serverextension enable --sys-prefix --py ipyparallel > /dev/null 2>&1
"${PREFIX}/bin/jupyter" nbextension install --sys-prefix --py ipyparallel > /dev/null 2>&1
"${PREFIX}/bin/jupyter" nbextension enable --sys-prefix --py ipyparallel > /dev/null 2>&1
