#!/bin/bash

# author: Thomas Salm
# http://www.devtom.de

params="-f"
extensions=( eps pdf midi png tex texi count svg )

for ext in "${extensions[@]}"
do
	rm $params out/*.$ext
done

