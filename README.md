# Docker Test files

Quick help files to get started with docker.
  
### Prerequisites

* Docker

### Setup docker to execute wthout sudo command

* Add username to the docker group
```
sudo usermod -aG docker ${USER}
```
* Log off and back in
```
su - ${USER}
```
* Verify user is added to group
```
id -nG

```
