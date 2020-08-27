#!/bin/bash

modules=$(ls | grep jnvilo)

for module in $modules
do
	cd $module
	git checkout master
	cd ..
done

timestamp=`date +%Y%m%Y-%H%M`

git commit -a -m "updated submodules to master - $timestamp"
git push 
