#!/bin/bash

curl "http://localhost:4741/incidents/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "incident": {
      "name": "'"${NAME}"'",
      "location": "'"${LOCATION}"'",
      "date": "'"${DATE}"'",
      "robbery_type": "'"${ROBBERY}"'",
      "description": "'"${DESCRIPTION}"'"
    }
  }'

echo
