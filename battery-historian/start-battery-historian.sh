#!/bin/bash

# then use browser to "localhost:5678"

docker run --name battery-hist -p 5678:9999 gcr.io/android-battery-historian/stable:3.0 --port 9999

