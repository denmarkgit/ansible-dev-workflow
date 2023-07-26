#!/bin/bash

git add .

git commit -m "updated"

git config credential.helper cache '--timeout 18000'

git push
