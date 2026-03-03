#!/bin/bash
git add .
message=${1:-$(date)}
git commit -m "$message" --allow-empty
git push
