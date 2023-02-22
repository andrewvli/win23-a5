#!/usr/bin/env bash

CALCULATOR=$1

if ! $CALCULATOR 100 + 12; then  # If the return code of $PROGRAM is non-zero (i.e. error)...
  echo 'ERROR! A valid run of the calculator (100 + 12) failed!'
  exit 1
fi

if [[ $($CALCULATOR 10 + -12) -ne -2 ]]; then  
  echo 'ERROR! A valid run of the calculator (10 + -12) failed to produce 2 as an output!'
  exit 1
fi

if [[ $($CALCULATOR -12 + -12) -ne -24 ]]; then  
  echo 'ERROR! A valid run of the calculator (-12 + -12) failed to produce -24 as an output!'
  exit 1
fi

if [[ $($CALCULATOR 0 + 0) -ne 0 ]]; then  
  echo 'ERROR! A valid run of the calculator (0 + 0) failed to produce 0 as an output!'
  exit 1
fi

if ! $CALCULATOR 5 '*' 3; then  
  echo 'ERROR! A valid run of the calculator (5 * 3) failed!'
  exit 1
fi

if [[ $($CALCULATOR 5 '*' 3) -ne 15 ]]; then  
  echo 'ERROR! A valid run of the calculator (5 * 3) failed to produce 15 as an output!'
  exit 1
fi

if ! $CALCULATOR 10 / -2; then  
  echo 'ERROR! A valid run of the calculator (10 / -2) failed!'
  exit 1
fi

if [[ $($CALCULATOR 10 / -2) -ne -5 ]]; then  
  echo 'ERROR! A valid run of the calculator (10 / -2) failed to produce -5 as an output!'
  exit 1
fi

if ! $CALCULATOR 1333 - 1334; then  
  echo 'ERROR! A valid run of the calculator (1333 - 1334) failed!'
  exit 1
fi

if [[ $($CALCULATOR 1333 - 1334) -ne -1 ]]; then  
  echo 'ERROR! A valid run of the calculator (1333 - 1334) failed to produce -1 as an output!'
  exit 1
fi