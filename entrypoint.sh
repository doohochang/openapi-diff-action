#!/bin/sh -l

java -jar /app/openapi-diff.jar $1 $2 --markdown summary.md
echo "$(cat summary.md)" >> $GITHUB_STEP_SUMMARY
