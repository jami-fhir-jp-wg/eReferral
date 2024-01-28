Mapping: JPPatientR4toSSMIX2ADT00PID
Source:   JP-Patient-eCS
Target:   "http://ssmix2"
Id:       ssmix2-adt00-pid-r4-jppatient
Title:    "SSMIX2ADT00PID  to JP_Patient"
// * -> "Patient"
// * extension[USCoreRaceExtension] -> "Patient.extension[http://fhir.org/guides/argonaut/StructureDefinition/argo-race]"
// * extension[USCoreEthnicityExtension] -> "Patient.extension[http://fhir.org/guides/argonaut/StructureDefinition/argo-ethnicity]"
// * extension[USCoreBirthSexExtension] -> "Patient.extension[http://fhir.org/guides/argonaut/StructureDefinition/argo-birthsex]"
// * identifier -> "Patient.identifier"
// * identifier.system -> "Patient.identifier.system"
// * identifier.value -> "Patient.identifier.value"
* meta.source -> "SS-MIX2標準化ストレージの場合には、http://jpfhir.jp/ssmix2std/<MSH-21-1>/医療機関識別OID番号 を設定。<MSH-21-1>　SS-MIX2_1.20 などのバージョン番号。\r\n 電子カルテデータベースの場合には、適宜設定してよいが、最後のパートに医療機関番号11桁を設定すること。"
* meta.profile -> "固定値:\"http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient\""
* identifier.system -> "固定値:\"urn:oid:1.2.392.100495.20.3.51.医療機関識別OID番号\" 医療機関識別OID番号;患者IDの発行者である機関の医療機関コード（１０桁）の先頭に１をつけた11桁"
* identifier.value -> "SS-MIX2値:<PID-3-1> (患者ID)"
* active -> "true"

* name.extension.url -> "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name.extension.valueCode -> "#IDE"
* name.use -> "#official"
* name.text -> "name[#IDE] PID-5[*]-1+PID-5[*]-2  (PID-5-8='I' ideographic typeのデータから取得)"
* name.family -> "name[#IDE] PID-5[*]-1 (PID-5-8='I' ideographic typeのデータから取得)"
* name.given -> "name[#IDE] PID-5[*]-2 (PID-5-8='I' phonideographiceric typeのデータから取得)"

* name.extension.url -> "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name.extension.valueCode -> "#SYL"
* name.use -> "#official"
* name.text -> "name[#SYL] PID-5[*]-1+PID-5[*]-2  (PID-5-8='P' phoneric typeのデータから取得)"
* name.family -> "name[#SYL] (PID-5-8='P' phoneric typeのデータから取得)"
* name.given -> "name[#SYL] (PID-5-8='P' phoneric typeのデータから取得)"

* telecom.system -> "#phone (PID-13-3='PH'に対応))"
* telecom.value -> "PID-13-12(.use=#homeの場合(PID-13-2='PRN' and PID-13-3='PH'))、PID-14-12(.use=#workの場合(PID-13-2='WPN' and PID-13-3='PH'))"
* telecom.use -> "#home,#work"

* gender -> "PID-8=F->female, M->male, U->unknown, O->other"

* birthDate -> "PID-7(YYYYMMDD形式)->YYYY-MM-DD形式"

* address.text -> "PID-11-8  例：神奈川県横浜市港区１－２－３"
* address.postalCode -> "PID-11-5  例：123-4567"
* address.use -> "#usual" 
* address.country -> "JP"