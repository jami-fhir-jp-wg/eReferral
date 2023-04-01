
Invariant: checkPhoneNumberExists
Description: "【telecomに電話番号が最低ひとつ記述されている】"
Severity: #error
Expression: "(telecom.where(value.exists())).exists()"


Profile: JP_Organization_eClinicalSummary
Parent: JP_Organization
Id: JP-Organization-eClinicalSummary
Description: "処方を発行した医療機関の情報　JP_Organizationの派生プロファイル"
//* obeys checkPhoneNumberExists
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Organization_eClinicalSummary"
* ^status = #active
* text ^short = "本リソースをテキストで表現したものを入れてもよい。"
* text.status ^short = "generated| extensions | additional | empty"
* text.status ^definition = "固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.div ^definition = "本リソースの構造化情報から生成したテキスト表現をいれてもよい。\\\\r\\\\nXHTML形式。"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension[prefectureNo] 0.. MS
* extension[prefectureNo].value[x] 1.. MS
* extension[organizationCategory] 0.. MS
* extension[organizationCategory].value[x] 1.. MS
* extension[organizationNo] 0.. MS
* extension[organizationNo].value[x] 1.. MS
* identifier[medicalInstitutionCode] 0..1 MS
* identifier[medicalInstitutionCode].system 1.. MS
* identifier[medicalInstitutionCode].system = "http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no" (exactly)
* identifier[medicalInstitutionCode].system ^short = "保険医療機関番号10桁の名前空間を識別するURL"
* identifier[medicalInstitutionCode].system ^definition = "保険医療機関番号10桁の名前空間を識別するURL。固定値。"
* identifier[medicalInstitutionCode].value ^short = "保険医療機関番号10桁"
* identifier[medicalInstitutionCode].value ^definition = "保険医療機関番号10桁。\r\n都道府県番号２桁、医科１または歯科３の種別コード１桁、保険医療機関番号７桁を連結した半角数字１０桁固定長の文字列。"
* identifier[medicalInstitutionCode].value MS
* type 0..1 MS
* type.coding.system = "http://terminology.hl7.org/CodeSystem/organization-type" (exactly)
* type.coding.system MS
* type.coding.system ^short = "施設種別を表すコード体系を識別するURI"
* type.coding.system ^definition = "施設種別を表すコード体系を識別するURI。固定値。"
* type.coding.code = #prov (exactly)
* type.coding.code MS
* type.coding.code from OrganizationType (extensible)
* type.coding.code ^short = "施設種別コード"
* type.coding.code ^definition = "バリューセットOrganizationType(http://hl7.org/fhir/ValueSet/organization-type) から、医療機関を表すコードを指定。固定値。"
* name 1.. MS
* name ^short = "医療機関の名称"
* name ^definition = "処方箋などに印刷する際に用いられる医療機関名称の文字列。"
* telecom 0.. MS
* telecom ^short = "医療機関電話番号"
* telecom ^definition = "医療機関電話番号"
* telecom.system MS
* telecom.system ^definition = "機器種別。　電話番号の場合にはphone　の固定値。"
* telecom.value ^short = "電話番号"
* telecom.value MS
* telecom.value ^definition = "電話番号。半角数字列で、適宜、ハイフンや括弧を含んでもよいが、使用時間帯などの説明は含めない。\r\n\"0123_456_7890\""
* address 0..1 MS
* address ^short = "医療機関住所"
* address ^definition = "医療機関住所"
* address.text 1.. MS
* address.text ^short = "医療機関の住所"
* address.text ^definition = "都道府県名を含む住所の文字列。郵便番号を含めない。\r\n例）\"神奈川県横浜市港区１－２－３\""
* address.postalCode ^short = "郵便番号"
* address.postalCode ^definition = "郵便番号。３桁-４桁。\r\n例）　\"123-4567\""

/*
Profile: JP_Organization_eClinicalSummary_issuer
Parent: JP_Organization_eClinicalSummary
Id: JP-Organization-eClinicalSummary-issuer
Description: "処方を発行した医療機関の情報　JP_Organizationの派生プロファイル"
* obeys checkPhoneNumberExists
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Organization_eClinicalSummary_issuer"
* ^status = #active
* telecom 1.. MS
* telecom ^short = "医療機関電話番号。電話番号は最低１件必ず記述されること。"
* telecom ^definition = "医療機関電話番号"
* telecom.system MS
* telecom.system ^definition = "機器種別。　電話番号の場合にはphone　の固定値。"
* telecom.value ^short = "電話番号"
* telecom.value MS
* telecom.value ^definition = "電話番号。半角数字列で、適宜、ハイフンや括弧を含んでもよいが、使用時間帯などの説明は含めない。\r\n\"0123_456_7890\""
* address 1..1 MS
* address ^short = "医療機関住所 診療情報提供書の発行組織では必須"
* address ^definition = "医療機関住所 診療情報提供書の発行組織では必須"
*/