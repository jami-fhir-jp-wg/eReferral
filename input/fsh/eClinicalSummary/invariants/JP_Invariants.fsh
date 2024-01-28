/*
Invariant: checkOrganizationType0
Description: "【診療部門コード(type[0].coding.where(system='http://terminology.hl7.org/CodeSystem/organization-type' and code='dept'))が正しい】"
Severity: #error
Expression: "(type[0].coding.where(system='http://terminology.hl7.org/CodeSystem/organization-type' and code='dept')).exists()"

Invariant: checkOrganizationType1
Description: "【診療科コード(type[1].coding.where(system='urn:oid:1.2.392.100495.20.2.51'))が存在する】"
Severity: #error
Expression: "(type[1].exists().not()) or ((type[1].coding.where(system='urn:oid:1.2.392.100495.20.2.51' )).exists())"

Invariant: checkPhoneNumberExists
Description: "【telecomに電話番号が最低ひとつ記述されている】"
Severity: #error
Expression: "(telecom.where(value.exists())).exists()"

Invariant: checkQualification-DoctorLicenseExists
Description: "【医師または歯科医師免許番号が存在し、system=urn:oid:1.2.392.100495.20.3.31で記述されている】"
Severity: #error
Expression: "(qualification[0].identifier.where(system='urn:oid:1.2.392.100495.20.3.31').exists()
    and (qualification[0].code.coding.where(system='http://jpfhir.jp/fhir/core/CodeSystem/practitioner_certificate_category'
      and (code='MedicalDoctorLicense' or code='DentalDoctorLicense'))).exists())"

Invariant: checkQualification-approapriateLicense
Description: "【資格番号は医師または歯科医師免許番号、麻薬施用者番号のいずれでかである】"
Severity: #error
Expression: "(qualification[1]).exists().not() or (qualification[1].code.coding.where(system='http://jpfhir.jp/fhir/core/CodeSystem/practitioner-certificate-category' and code!='MedicalDoctorLicense' and code!='DentalDoctorLicense' and code!='NarcoticsPractitioner') ).exists().not()"

Invariant: checkQualification-NarcoticPractitioner
Description: "【麻薬施用者番号が存在しないならそのチェックは不要。麻薬施用者番号が存在する場合はコードNarcoticPractitioner、identifier.system=urn:oid:1.2.392.100495.20.3.32.1XXXである】"
Severity: #error
Expression: "((qualification[1]).exists().not())
 or ((qualification[1].code.coding.where(
    system='http://jpfhir.jp/fhir/core/CodeSystem/practitioner-certificate-category'
    and code='NarcoticsPractitioner') ).exists()
 and qualification[1].identifier.where(
     system.startsWith('urn:oid:1.2.392.100495.20.3.32.1')
     ).exists())"

Invariant: checkQualification-category
Description: "【資格コードシステムはpractitioner_certificate_categoryだけである】"
Severity: #error
Expression: "(qualification[1]).exists().not() or (qualification.code.coding.where(system!='http://jpfhir.jp/fhir/core/CodeSystem/practitioner-certificate-category')).exists().not()"
*/
