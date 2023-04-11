#!/bin/sh -l

FAIL_ON_INCOMPATIBLE=$3

if [ FAIL_ON_INCOMPATIBLE = "true" ]
then
    $JAVA_HOME/bin/java -jar /app/openapi-diff.jar $1 $2 --markdown summary.md
else
    $JAVA_HOME/bin/java -jar /app/openapi-diff.jar $1 $2 --markdown summary.md --fail-on-incompatible
fi

echo "# OpenAPI Diff Summary" >> $GITHUB_STEP_SUMMARY
cat summary.md >> $GITHUB_STEP_SUMMARY
