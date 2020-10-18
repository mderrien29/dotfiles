#!/bin/bash

if [ "$1" == "--delete" ]; then
  find ~/ -name '*~' -print0 | xargs -0 rm
else 
  find ~/ -name '*~'
fi

