#!/bin/bash

echo "ville ? "
read city

curl http://fr.wttr.in/$city
