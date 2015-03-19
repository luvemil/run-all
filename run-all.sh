#!/usr/bin/env bash

cd ../analysis && forever -w start app.js
cd ../analysis-frontend && middleman server &
cd ../rzmq-workers && ./rzmq-worker.R &
cd ../analysis && forever logs app.js -f

forever stop app.js
