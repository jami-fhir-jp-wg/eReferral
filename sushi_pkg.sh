#!/bin/bash
rm -r ~/.fhir
cp -r ~/.fhir_sushiVersion ~/.fhir

mkdir -p input/fsh/eClinicalSummary/
cp -r eClinicalSummary/input/fsh/* input/fsh/eClinicalSummary/
cp eClinicalSummary/input/fsh/aliases-eclinicalsummary.fsh input/fsh/eClinicalSummary/
cp eClinicalSummary/input/pagecontent/* input/pagecontent/


sushi -s .
cd fsh-generated
mv resources package
cp ../forPackageRelease/package-diff.json package/package.json
mkdir -p ../ExampleJson
rm -rf ../ExampleJson
mkdir ../ExampleJson
mv package/*GOFSH* ../ExampleJson/
gtar czf jp-eReferral.r4.tgz package
rm ../packages_snapshot/jp-eReferral.r4.tgz
rm ../pkgValidation/jp-eReferral.r4.tgz
cp jp-eReferral.r4.tgz ../packages_snapshot
cp jp-eReferral.r4.tgz ../pkgValidation
cd ..
rm -r ~/.fhir
cp -r ~/.fhir.validation ~/.fhir
#rm -rf fsh-generated