#!/bin/bash
printf "\n==========================================[ 1][lite_server]\n"
docker container exec lab1_lite_server curl -X GET http://localhost:3000/hello.html

printf "\n==========================================[ 2][json_server]\n"
docker container exec lab1_json_server curl -X GET http://localhost:3000/phrases/
docker container exec -it lab1_json_server curl -X POST http://localhost:3000/phrases \
   -H 'Content-Type: application/json' \
   -d '{ 
    "id": 3, 
    "question": "how are you?"
  }'
docker container exec lab1_json_server curl -X GET http://localhost:3000/phrases/

printf "\f==========================================[ 3][nginx]\n"
curl -X GET http://localhost:80