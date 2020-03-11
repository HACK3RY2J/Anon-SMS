#!/bin/bash
command -v curl > /dev/null 2>&1 || {  echo >&2 "It require curl, but it is not installed. \n installing it.."; apt install curl -y; }
command -v python > /dev/null 2>&1 || {  echo >&2 "It require python, but it is not installed. \n installing it.."; apt install python -y; }
command -v pip > /dev/null 2>&1 || {  echo >&2 "It require pip, but it is not installed. \n installing it.."; curl https:bootstrap.pypa.io/get-pip.py -o get-pip.py && python get-pip.py ; }
command -v toilet > /dev/null 2>&1 || {  echo >&2 "It require toilet package but it is not installed. \n installing it.."; apt install toilet -y; },
