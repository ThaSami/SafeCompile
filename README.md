# SafeCompile

A small script that provide ISOLATION to compile a given code. 

make sure you have Docker installed , 
https://docs.docker.com/v17.09/engine/installation/

## usage:
```
$ chmod +x safecompile.sh
$ docker-compose -f Dockerfile.yml up
$ ./safecompile.sh <cpp or py file>
```
  
## how it works ? 
  the docker image has a java API, the script  takes the code and compile it inside a docker container then print its output and then delete the container, if the code compiled successfuly the file hash and output will be saved in MYSQL database for later use... 
the java source code : 
https://github.com/ThaSami/CompileCodesIsolate






