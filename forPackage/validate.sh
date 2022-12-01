#!/bin/bash
cd ~/GitHub
java -jar work/validator_cli.jar eReferral/forPackage/example/Bundle-bundleReferralExample01.json  -version 4.0.1 -showReferenceMessages -ig eReferral/forPackage/jp-ereferral-0.9.2-diff.tgz -ig eReferral/forPackage/jp-core.r4-1.1.1.tgz  -tx https://tx.jpfhir.jp:8081 