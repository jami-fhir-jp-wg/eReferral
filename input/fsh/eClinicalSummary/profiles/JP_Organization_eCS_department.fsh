//-------------------------------
//--- Profile for conatained resource within other resources
//-------------------------------

Profile: JP_Organization_eCS_department
Parent: JP_Organization
Id: JP-Organization-eCS-department

// * obeys checkOrganizationType0
// * obeys checkOrganizationType1


Description: "診療情報コアサマリー用　Organizationリソース（診療科情報）プロファイル　（JP_Organizationの派生プロファイル）"
//* obeys checkPhoneNumberExists
* ^url = $JP_Organization_eCS_department
* ^status = #active
* ^date = "2023-03-31"
* . ^short = "診療情報コアサマリーにおける診療科情報の格納に使用する"
* . ^definition = "診療情報コアサマリー・厚労省6情報などにおける診療科情報の格納に使用する"

* text ^short = "本リソースをテキストで表現したものを入れてもよい。"
* text.status ^definition = "固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.div ^definition = "本リソースの構造化情報から生成したテキスト表現をいれてもよい。\\\\r\\\\nXHTML形式。"
//* extension ^slicing.discriminator.type = #value
//* extension ^slicing.discriminator.path = "url"
//* extension ^slicing.rules = #open
//* extension ^min = 0
* name 1.. MS
* name ^short = "診療科の名称"
* name ^definition = "医療文書などに印刷、または画面に表示する際に用いられる診療科の名称。\r\n必ずしも正式名称でなく、略称でも差し支えない。"
* partOf 0.. MS
* partOf only Reference(JP_Organization_eCS) 
* partOf.reference 1.. MS 
* partOf.reference ^short = "この診療科が所属する医療機関の情報"
* partOf.reference ^definition = "Bundleリソースに格納される、処方医療機関を表すOrganizationリソースのfullUrl要素に指定されるUUIDを指定や、Containedリソースに格納される相対参照を使用する。"

/*
Profile: JP_Organization_eS_departmentOfIssuer
Parent: JP_Organization_eS_department
Id: JP-Organization-eCS-departmentOfissuer
Description: "医療文書を発行した医療機関の診療科情報　JP_Organizationの派生プロファイル"
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Organization_eCS_departmentOfIssuer"
* ^status = #active
*/