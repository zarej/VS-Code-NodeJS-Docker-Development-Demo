#!/bin/bash
npm i
if [ "$NODE_ENV" = "production" ]; then
  npm start
else
  npm run debug
fi
