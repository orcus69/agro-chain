##How to run docker container

1. Build docker image
``` docker-compose up -d --build```
2. Access to docker container
```docker exec -it <image_name> bash```
3. Run all the test cases
```truffle test ./test/<test_name>.test.js```