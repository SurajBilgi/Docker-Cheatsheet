#### to start a docker
```bash
sudo docker run -it <image-name:tag> ## to start a docker##
```


#### To resume an already running docker image
```bash
sudo docker exec -it <container id> bash ## To resume an already running docker image##
```

#### list all images existing in the machine
```bash
sudo docker images 
```

### to show currently running docker images
```bash
sudo docker ps 
```

### to show all (running and exited) docker images##
```bash
sudo docker ps -a 
```

#### To save the docker images after making changes
```bash
sudo docker save --output="name.tar/zip/gz" <image-name:tag> 
```

#### to rename the docker images for easy Push, Pull, Save, Load etc
```bash
sudo docker tag <container ID> <New-Name:Tag> or <your account/repository-name:tag> 
```

####To load a tarfile as an image for docker# once this is done you will be able to see the tar file as an image is SUDO DOCKER IMAGES
```bash
sudo docker load -i name.tar/zip/gz 
```

#### to pull an image from your repository to your local machine
```bash
sudo docker pull <account/repositoryname:tag> 
```

####to push an editd image to your repository
```bash
sudo docker push <account/repository-name:tag> 
```

#### to save and get it ready to be commited as final before it is exited
```bash
sudo docker commit <container-ID> <new-name:tag> or <account/repo-name:tag> 
```

#### to remove docker images from the image list
```bash
sudo docker rmi <imagename:tag> 
```

#### to mount local folders inside docker
```bash
sudo docker run -it -v /local/file/path:/docker/file/path image-name:tag
```

#### Custom hostname for docker images
```bash
sudo docker run -it --hostname=ANYNAME image-name:tag 
```
