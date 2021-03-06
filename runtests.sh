#!/bin/env bash

set -e

npm run lint
(cd ./backend && npm install && npm test)
(cd ./persistence/memory && npm install && npm test)
(cd ./persistence/mysql && npm install && npm test)
(cd ./persistence/postgresql && npm install && npm test)
(cd ./persistence/couchdb && npm install && npm test)
(cd ./client && npm install && npm test)

exit 0
