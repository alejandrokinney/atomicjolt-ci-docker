# Atomic Jolt CI Docker Image
## Updating
-----------
1. Login:
```
docker login
```
2. Build the new image:
```
docker build . -t atomicjolt-ci:latest
```
3. Get the new node and yarn versions
```
docker run -it --rm atomicjolt-ci:latest /bin/sh -c 'ruby --version && node --version && yarn --version'
```
4. Make a new tag, updating versions where necessary:
```
docker tag atomicjolt-ci:latest public.ecr.aws/atomicjolt/atomicjolt-ci:ruby-2.4.1--node-8.15.1--yarn-1.10.1
```
5. Push the new tag to ecr:
```
docker push public.ecr.aws/atomicjolt/atomicjolt-ci:ruby-2.4.1--node-8.15.1--yarn-1.10.1
```
