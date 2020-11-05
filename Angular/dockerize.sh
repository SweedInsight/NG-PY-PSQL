#!/bin/bash
yarn --prefer-offline --no-progress
ng build --prod
docker build -t zoomapp:latest .