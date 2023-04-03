#!/bin/bash
cd ~/GitHub/eReferral
#-- 共通りソースプロファイルを移動
mkdir -p input/fsh/eClinicalSummary/
rm -f input/fsh/eClinicalSummary/*
mv eClinicalSummary/fsh/* input/fsh/eClinicalSummary/
mv eClinicalSummary/aliases-eclinicalsummary.fsh input/fsh/eClinicalSummary/
#--
#-- diff パッケージの作成
sushi .
mv fsh-generated/resources fsh-generated/package-diff
rm -rf forPackage/package
mkdir -p forPackage/package
cp -r fsh-generated/package-diff  forPackage/package
cd forPackage
cp package.json_jpreferral_0.9.4-diff package/package.json
gtar czf package.tgz package
mv package.tgz jp-ereferral-0.9.4-diff.tgz
cd ~/GitHub/eReferral
#-- snapshot パッケージの作成
sushi -s .
mv fsh-generated/resources fsh-generated/package-snap
rm -rf forPackage/package
mkdir -p forPackage/package
cp -r fsh-generated/package-snap  forPackage/package
cd forPackage
cp package.json_jpreferral_0.9.4-snap package/package.json
gtar czf package.tgz package
mv package.tgz jp-ereferral-0.9.4-snap.tgz
#-- 共通りソースプロファイルをもとに戻す
mkdir -p input/fsh/eClinicalSummary/
rm -f input/fsh/eClinicalSummary/*
mv eClinicalSummary/fsh/* input/fsh/eClinicalSummary/
mv eClinicalSummary/aliases-eclinicalsummary.fsh input/fsh/eClinicalSummary/
#--
