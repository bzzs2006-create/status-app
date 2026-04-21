# Status API

Simple Node.js API containerized with Docker and built with CI/CD.

## Run locally

npm install  
node index.js  

## Run with Docker

docker build -t status-app .  
docker run -p 3000:3000 status-app  

## Endpoint

/api/status
