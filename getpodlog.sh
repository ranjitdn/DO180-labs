#/bin/bash

podlist=$(oc get pods | awk '{print $1}')

for podname in $podlist 
do
	if [ $podname != "NAME" ] 
	then
	     echo "======================================Start log $podname==============================="
		oc logs $podname
	     echo "======================================End log $podname==============================="
	fi
done;
