# mydefault-dockerfile
This project is here to store my sample of a Dockerfile. I pref using a sample like this i'll never forget anything.  
 
## How to use a Dockerfile after the dev part.
```ruby

>>> Always name your dockerfile => Dockerfile
> cd /folder/to/your/dockerfile
> docker build . -t your-name:version

>>> And now you can see your image doing :
> docker images | grep your-name
```  
  
## How to test it ? You will not run your image without checking if it works.
```ruby

>>> That docker cmd will launch your container copying a file, and giving you a   
>>> a shell into it. If you CTRL + D in the container, the container will be  
>>> deleted in the docker ps -a.
> docker run -it --rm -v /file/you/want/to/copy:/tmp/yourfile your-name:version sh 

>>> Surely, according to your app running on your containers you will need to use
>>> adaptive tools to make some CI/CD and be sure that the container will do 
>>> what he has to do. 
> example: using gitlab-ci runner, you could make the runner execute a .py  
> scripting using some curl cmds to test your web app and his scenarios  
> by using POST curls cmd. 
```
