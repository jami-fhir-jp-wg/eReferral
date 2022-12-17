##-- JPFHIRExampleCreationからもってきたままなので修正必要
version=0.9.3
cd ~/GitHub/eReferral
sushi -s .
mv fsh-generated/resources fsh-generated/package
cp -r fsh-generated/package  ../JPFHIRExampleCreation/packages_snapshot
cd ~/GitHub/JPFHIRExampleCreation/packages_snapshot/
cp package.json_jpreferral_$version-snap package/package.json
gtar czf package.tgz package ; mv package.tgz jp-ereferral#$version-snap.tgz
cp jp-ereferral#$version-snap.tgz ~/.fhir/packages/jp-ereferral#$version-snap
cd ~/.fhir/packages/jp-ereferral#$version-snap/
rm -r package
gtar xzf jp-ereferral#$version-snap.tgz
cd ~/GitHub/

cd ~/GitHub/eReferral
sushi .
mv fsh-generated/resources fsh-generated/package
rm -rf ../JPFHIRExampleCreation/packages_snapshot/package
mkdir -p ../JPFHIRExampleCreation/packages_snapshot/package
cp -r fsh-generated/package  ../JPFHIRExampleCreation/packages_snapshot
cd ~/GitHub/JPFHIRExampleCreation/packages_snapshot/
cp package.json_jpreferral_$version-diff package/package.json
gtar czf package.tgz package ; mv package.tgz jp-ereferral-$version-diff.tgz

cd ~/GitHub/JPFHIRExampleCreation
rm -f ./input/fsh/*.fsh*; while read -r f;do outfname=`basename $f .fshegg`;echo "converting $f to ./input/fsh/$outfname.fsh";filepp -b  -I./fshegg  -M/usr/local/share/filepp/modules -m bigdef.pm -m foreach.pm -m bigfunc.pm  -M ./perlFunc  -m base64.pm -m uuid4.pm $f >./input/fsh/$outfname.fsh;done < <(find ./fshegg -name *.fshegg );
python3 pyscripts/addFullUrl2Composition.py 
mkdir -p ./input/fsh/backup
mv ./input/fsh/*.fsh_backup ./input/fsh/backup/
sushi .  -o ./output-json
cd ~/GitHub/
java -jar work/validator_cli.jar JPFHIRExampleCreation/output-json/fsh-generated/resources/Bundle-bundleReferralExample01.json -ig JPFHIRExampleCreation/packages_snapshot/jp-ereferral#$version-snap.tgz -tx https://tx.jpfhir.jp:8081 >JPFHIRExampleCreation/output.txt