#!/bin/bash

curl --include --request GET "http://localhost:4741/incidents/${ID}" \
--header "Authorization: Token token=${TOKEN}"
