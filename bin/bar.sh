#!/bin/bash

clock() {
  DATETIME=$(date "+%a %b %d, %T")
  echo -n "$DATETIME"
}

while true; do
  BAR_INPUT="%{c}$(clock)"
  echo $BAR_INPUT
done
