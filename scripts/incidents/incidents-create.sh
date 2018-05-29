#!/bin/bash

curl "http://localhost:4741/incidents" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "incident": {
      "name": "'"${NAME}"'",
      "location": "'"${LOCATION}"'",
      "date": "'"${DATE}"'",
      "robbery_type": "'"${ROBBERY}"'",
      "description": "'"${DESCRIPTION}"'",
      "user_id": "'"${USERID}"'"
    }
  }'

echo
