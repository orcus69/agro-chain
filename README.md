##How to run docker container

1. Build docker image
```docker build -t <image_name> .```
2. Access to docker container
```docker container run -it <image_name> /bin/bash```
3. Run all the test cases
```truffle test ./test/<test_name>.test.js```