#!/bin/bash
rm -r ~/.fhir
cp -r ~/.fhir_sushiVersion ~/.fhir

mkdir -p input/fsh/eClinicalSummary/
rm -rf input/fsh/eClinicalSummary/
mkdir -p input/fsh/eClinicalSummary/
cp -r eClinicalSummary/input/fsh/* input/fsh/eClinicalSummary/

java -jar ../work/publisher_latest.jar  -ig ig.ini  -tx n/a

rm -r ~/.fhir
cp -r ~/.fhir.validation ~/.fhir
rm -rf input/fsh/eClinicalSummary/

#rm -rf fsh-generated