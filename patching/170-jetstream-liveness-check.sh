#!/usr/bin/env bash

echo "DOMAIN: ${DOMAIN}"
echo "rDir:   ${rDir}"
echo "pDir:   ${pDir}"

d_=${rDir}/jetstream
p_=${pDir}/170-jetstream-liveness-check.patch

echo "applying patch: under ${d_} for ${p_}"

pushd ${d_}
patch -p1 < ${p_}
popd