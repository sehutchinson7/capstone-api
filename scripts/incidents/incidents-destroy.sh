#!/bin/bash

curl --include --request DELETE "http://localhost:4741/incidents/${ID}" \
--header "Authorization: Token token=${TOKEN}"
