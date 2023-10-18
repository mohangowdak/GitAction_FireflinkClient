curl --location 'http://127.0.0.1:8111/ci-pipeLine' \
--header 'Content-Type: application/json' \
--data-raw '{
    "emailId": "$1",
    "password": "$2"
}'
