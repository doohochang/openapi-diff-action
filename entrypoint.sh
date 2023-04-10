#!/bin/sh -l

$JAVA_HOME/bin/java -jar /app/openapi-diff.jar $1 $2 --markdown summary.md

echo "# OpenAPI Diff Summary" >> $GITHUB_STEP_SUMMARY
cat summary.md >> $GITHUB_STEP_SUMMARY
