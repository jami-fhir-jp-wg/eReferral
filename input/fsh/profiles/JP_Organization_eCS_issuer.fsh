
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
