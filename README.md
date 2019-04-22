# Atomic Jolt CI Docker Image
## Updating
-----------
1. Login:
```
docker login
```
2. Build the new image:
```
docker build .
```
3. Get the new image ID: 
```
docker image ls
```
4. Get the new node and yarn versions
```
docker run -it --rm <image id> /bin/bash -c 'yarn --version'
docker run -it --rm <image id> /bin/bash -c 'node --version'
```
5. Make a new tag, updating versions where necessary:
```
docker tag <image id> atomicjolt/atomicjolt-ci:ruby-2.4.1--node-8.15.1--yarn-1.10.1
```
6. Push the new tag to dockerhub:
```
docker push atomicjolt/atomicjolt-ci:ruby-2.4.1--node-8.15.1--yarn-1.10.1
```
