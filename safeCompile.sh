#! /bin/bash

file_name=$1

if [ -f $file_name ];
     then
         docker run --rm -v $(pwd)/$file_name:/compile/$file_name:rw --network="host" -e filename=$file_name thasami/safecompile:latest
    else
	echo "file doesn't exist"
fi
   
