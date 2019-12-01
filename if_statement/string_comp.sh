#!/bin/bash

#show 3 lines of ps command only to root user
# [ -z "$STR1" ] true if STR1 holds empty string
# [ -n "$STR1" ] true if STR1 holds non-empty string

WHOAMI=$(whoami)

if [ -z "$WHOAMI" ]; then
  echo "Is empty"
  exit 1
fi

# if [ -n "$WHOAMI" ]; then
#   echo "Is non-empty"
#   exit 1
# fi


if [ "$WHOAMI" == "leaf" ]; then
  echo "You are leaf "
  exit 1
fi

if [ "$WHOAMI" != "root" ]; then
  echo "You are not root, exiting"
  exit 1
fi

ps -ef | head -3