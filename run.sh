#!/bin/bash
source activate alex
export SHELL=/bin/bash
jupyter notebook --ip=0.0.0.0 --no-browser --allow-root --NotebookApp.trust_xheaders=True --NotebookApp.disable_check_xsrf=False --NotebookApp.allow_remote_access=True --NotebookApp.allow_origin='*'
