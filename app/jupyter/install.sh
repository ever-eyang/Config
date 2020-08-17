#!/bin/bash

if [[ -z "$1" ]]
then
	HOM="$HOME"
else
	HOM="$1"
fi

jupyter qtconsole --generate-config
cp jupyter_qtconsole_config.py "$HOM"/.jupyter/
cp jupyter_notebook_config.py "$HOM"/.jupyter/
cp .condarc "$HOM"
