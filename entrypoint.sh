#!/bin/sh -l


$JAVA_HOME/bin/java -jar /app/openapi-diff.jar $1 $2 --markdown summary.md --fail-on-incompatible
STATUS=$?

echo "# OpenAPI Diff Summary" >> $GITHUB_STEP_SUMMARY
cat summary.md >> $GITHUB_STEP_SUMMARY

FAIL_ON_INCOMPATIBLE=$3
if [ $FAIL_ON_INCOMPATIBLE = "true" ] && [ $STATUS != 0 ]
then
    echo "API changes broke backward compatibility."
    echo "**API changes broke backward compatibility.**" >> $GITHUB_STEP_SUMMARY
    exit 1
fi
