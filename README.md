# An example of complete dockerfile 
  
This project is here to store my sample of a Dockerfile.  
I pref using a sample to never forget anything and to curl  
the file everytime I need to begin a Dockerfile.  
  
## Use your Dockerfile
  
* Build your image
```bash
cd /folder/to/your/dockerfile
docker build . -t foo:v0.0.1
```  
* You can check it here
```bash
docker images | grep foo
```  
* Run a container using your image
```bash
docker run -it --rm -v /file/you/want/to/copy:/tmp/yourfile foo:v0.0.1 sh
```
  
## Integrate Dockerfile to your production projects
  
You will maybe host the Dockerfile on your git repository to be close to your app,  
and you will need to pass tests when you push a new release of your Dockerfile.  
You will avoid human errors & therefore make your production cycle more faster.   
  
You could use gitlab-ci (or Jenkins, circle-ci, travis-ci ...), to make a runner  
build your image, send it to a personal repository (Harbor, Nexus ...) and then try  
to run a docker container. Then your runner will trigger a script testing for example  
with HTTP request your flask app.    
