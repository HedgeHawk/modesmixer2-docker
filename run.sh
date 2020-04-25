#!/bin/bash

CUSTOM_OPTIONS=""
if [ -n "${INPUT}" ]; then
  CUSTOM_OPTIONS="${CUSTOM_OPTIONS} --inConnect ${INPUT}"
fi

if [ -n "${OUTPUT}" ]; then
  CUSTOM_OPTIONS="${CUSTOM_OPTIONS} --outConnect ${OUTPUT}"
fi

if [ -n "${RECEIVER_LATITUDE}" ] && [ -n "${RECEIVER_LONGITUDE}" ]; then
  CUSTOM_OPTIONS="${CUSTOM_OPTIONS} --location ${RECEIVER_LATITUDE}:${RECEIVER_LONGITUDE}"
fi

if [ -n "${WEBPORT}" ]; then
  CUSTOM_OPTIONS="${CUSTOM_OPTIONS} --web ${WEBPORT}"
fi

if [ -n "${MAPS_API_KEY}" ]; then
  CUSTOM_OPTIONS="${CUSTOM_OPTIONS} --google-key ${MAPS_API_KEY}"
fi

/usr/bin/modesmixer2 ${CUSTOM_OPTIONS}
