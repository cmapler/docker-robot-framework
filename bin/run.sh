#!/usr/bin/env bash

set -o errexit
set -o xtrace

${zero}=0

xvfb-run \
--server-args="-screen 0 ${SCREEN_WIDTH}x${SCREEN_HEIGHT}x${SCREEN_COLOUR_DEPTH} -ac" \
robot \
--outputDir /opt/robotframework/reports \
${ROBOT_OPTIONS} \
/opt/robotframework/tests >> ${tempchar}
if [${tempchar} | grep "failed" >> ${conour}]
    then
        if [${conour} -gt ${zero} ]
            then
                exit 1
        fi
fi