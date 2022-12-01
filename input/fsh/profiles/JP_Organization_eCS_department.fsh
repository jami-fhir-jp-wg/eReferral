Invariant: checkOrganizationType0
Description: "【診療部門コード(type[0].coding.where(system='http://terminology.hl7.org/CodeSystem/organization-type' and code='dept'))が正しい】"
Severity: #error
Expression: "(type[0].coding.where(system='http://terminology.hl7.org/CodeSystem/organization-type' and code='dept')).exists()"

Invariant: checkOrganizationType1
Description: "【診療科コード(type[1].coding.where(system='urn:oid:1.2.392.100495.20.2.51'))が存在する】"
Severity: #error
Expression: "(type[1].exists().not()) or ((type[1].coding.where(system='urn:oid:1.2.392.100495.20.2.51' )).exists())"

Profile: JP_Organization_eClinicalSummary_department
Parent: JP_Organization
Id: JP-Organization-eClinicalSummary-department
Description: "医療機関の診療科情報　JP_Organizationの派生プロファイル"

* obeys checkOrganizationType0
* obeys checkOrganizationType1
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Organization_eClinicalSummary_department"
* ^status = #active
* text ^short = "本リソースをテキストで表現したものを入れてもよい。"
* text.status ^definition = "固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.div ^definition = "本リソースの構造化情報から生成したテキスト表現をいれてもよい。\\\\r\\\\nXHTML形式。"
//* extension ^slicing.discriminator.type = #value
//* extension ^slicing.discriminator.path = "url"
//* extension ^slicing.rules = #open
//* extension ^min = 0
* name 1.. MS
* name ^short = "診療科の名称"
* name ^definition = "医療文書などに印刷、または画面に表示する際に用いられる診療科の名称。\r\n必ずしも正式い名称でなく、略称でも差し支えまい。"
* partOf 1.. MS
* partOf only Reference(JP_Organization_eClinicalSummary) 
* partOf.reference 1.. MS 
* partOf.reference ^short = "この診療科が所属する医療機関の情報"
* partOf.reference ^definition = "Bundleリソースに格納される、処方医療機関を表すOrganizationリソースのfullUrl要素に指定されるUUIDを指定"

Profile: JP_Organization_eClinicalSummary_departmentOfIssuer
Parent: JP_Organization_eClinicalSummary_department
Id: JP-Organization-eClinicalSummary-departmentOfissuer
Description: "医療文書を発行した医療機関の診療科情報　JP_Organizationの派生プロファイル"
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Organization_eClinicalSummary_departmentOfIssuer"
* ^status = #active
