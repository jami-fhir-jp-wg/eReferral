#!/bin/bash
cd ~/GitHub/eReferral
sushi .
mv fsh-generated/resources fsh-generated/package-diff
cp -r fsh-generated/package-diff  forPackage/package
cd forPackage
cp package.json_jpreferral_0.9.2-diff package/package.json
gtar czf package.tgz package
mv package.tgz jp-ereferral-0.9.2-diff.tgz
cd ~/GitHub/eReferral
sushi -s .
mv fsh-generated/resources fsh-generated/package-snap
cp -r fsh-generated/package  forPackage/package
cd forPackage
cp package.json_jpreferral_0.9.2-snap package/package.json
gtar czf package.tgz package
mv package.tgz jp-ereferral-0.9.2-snap.tgz
