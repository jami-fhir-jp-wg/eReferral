// Patientリース
// JP_Patient
// 000mn_ExampleJPPatient(ARGinstancename)
// 001mn_Description(ARGtxt)
// 002or_ValidationProfile(ARGmetaprofile)
// 002or_ValidationProfile_JPPatient()
// 0E1or_患者宗教(ARGcode)
// 0E1or_患者生誕地住所TEXT(ARGtext)
// 0E1or_患者人種(ARGcode)
// 010mn_患者ID(ARG)
// 020on_患者アクティブ
// 030on_患者漢字氏名(ARGfirstname,ARGgivenname)
// 030on_患者カナ氏名(ARGfirstnamekana,ARGgivennamekana)
// 040or_患者電話番号(ARG)
// 040or_患者自宅電話番号(ARG)
// 040or_患者携帯番号(ARG)
// 040or_患者職場電話番号(ARG)
// 050on_患者性別(ARG)
// 060on_患者生年月日(ARG)
// 070on_患者死亡()
// 070on_死亡日時(ARG)
// 080or_患者住所(ARGpostal,ARGtext)
// 080or_患者職場住所(ARGpostal,ARGtext)
// 080or_患者構造化住所(ARGpostal,ARGtext,ARGstate,ARGcity,ARGline)
// 080or_患者自宅構造化住所(ARGpostal,ARGtext,ARGstate,ARGcity,ARGline)
// 080or_患者職場構造化住所(ARGpostal,ARGtext,ARGstate,ARGcity,ARGline)

Instance: jppatientExample01Inline
InstanceOf: JP_Patient
Usage: #inline

Description: "JPPatient患者FHIR　例"

* meta.profile[+] = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient"

* identifier.system = "urn:oid:1.2.392.200119.6.102.11234567890"
* identifier.value = "12345"

* active = true

* name[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #IDE
* name[=].use = #official
* name[=].text = "田中　太郎"
* name[=].family = "田中"
* name[=].given = "太郎"

* name[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #SYL
* name[=].use = #official
* name[=].text = "タナカ　タロウ"
* name[=].family = "タナカ"
* name[=].given = "タロウ"

// 自宅電話番号と同じ処理
* telecom[+].system = #phone
* telecom[=].value = "03-1234-5678"
* telecom[=].use = #home

* gender = #male

* birthDate = "1955-05-04"

* address[+].text = "神奈川県横浜市港区１－２－３"
* address[=].postalCode = "123-4567"
* address[=].country = "JP"

