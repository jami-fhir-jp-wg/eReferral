#!/bin/bash
cd ~/GitHub
VERSION=0.9.3
PACKAGEDIR=packagesForValidation
java -jar work/validator_cli.jar eReferral/forPackage/example/Bundle-bundleReferralExample01.json  -version 4.0.1 -showReferenceMessages -ig $PACKAGEDIR/jp-ereferral-$VERSION-diff.tgz -ig eReferral/forPackage/jp-core.r4-1.1.1.tgz  -tx https://tx.jpfhir.jp:8081 
