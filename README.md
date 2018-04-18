## Express generator docker app
1. Base code generated with express generated
2. Dockerfile with official node image
3. docker-compose link express app with mongo image

### Steps
```bash
 - git clone https://github.com/yasharma/express-node-docker.git
 - cd express-node-docker
 - npm install
 - npm run nodemon (without docker)
 ```
 
### Steps for docker development 
```bash
 - Make sure you have [docker](https://docs.docker.com/install/) and [docker-compose](https://docs.docker.com/compose/install/)
 - docker-compose up --build
 
Now whenever you change any file nodemon restart the server and changes will reflect on page refresh
