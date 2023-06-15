
```python
sudo docker run -it <image-name:tag> ## to start a docker##
```
```python
sudo docker exec -it <container id> bash ## To resume an already running docker image##
```
```python
sudo docker images ## list all images existing in the machine##
```
```python
sudo docker ps ## to show currently running docker images##
```
sudo docker ps -a ## to show all (running and exited) docker images##
sudo docker save --output="name.tar/zip/gz" <image-name:tag> ##To save the docker images after making changes##
sudo docker tag <container ID> <New-Name:Tag> or <your account/repository-name:tag> ## to rename the docker images for easy Push, Pull, Save, Load etc##
sudo docker load -i name.tar/zip/gz ##To load a tarfile as an image for docker# once this is done you will be able to see the tar file as an image is SUDO DOCKER IMAGES##
sudo docker pull <account/repositoryname:tag> ## to pull an image from your repository to your local machine##
sudo docker push <account/repository-name:tag> ##to push an editd image to your repository##
sudo docker commit <container-ID> <new-name:tag> or <account/repo-name:tag> ## to save and get it ready to be commited as final before it is exited##
sudo docker rmi <imagename:tag> ## to remove docker images from the image list##
sudo docker run -it -v /local/file/path:/docker/file/path image-name:tag## to mount local folders inside docker##

sudo docker run -it --hostname=ANYNAME image-name:tag ## Custom hostname for docker images##
```
