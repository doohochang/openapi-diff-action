#!/bin/sh -l

$JAVA_HOME/bin/java -jar /app/openapi-diff.jar $1 $2 --markdown summary.md
cat summary.md >> $GITHUB_STEP_SUMMARY
