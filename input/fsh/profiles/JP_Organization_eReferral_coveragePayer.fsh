Profile: JP_Organization_eReferral_coveragePayer
Parent: JP_Organization
Id: JP-Organization-eReferral-coveragePayer
Description: "処方に適用される保険の保険者または公費の公費受給者　JP_Organizationの派生プロファイル"
* ^url = "http://jpfhir.jp/fhir/ePrescription/StructureDefinition/JP_Organization_eReferral_coveragePayer"
* ^status = #draft
* text ^short = "本リソースをテキストで表現したものを入れてもよい。"
* text.status ^definition = "固定値.テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.div ^definition = "本リソースの構造化情報から生成したテキスト表現をいれてもよい。\\\\r\\\\nXHTML形式。"
* extension[PrefectureNo] ..0
* extension[OrganizationCategory] ..0
* extension[OrganizationNo] ..0
* identifier[MedicalInstitutionCode] ..0
* identifier[MedicalInstitutionCode].system = "http://jpfhir.jp/fhir/Common/IdSystem/insurance-medical-institution-no" (exactly)
* identifier[InsurerNumber] 0..1 MS
* identifier[InsurerNumber].id ..0
* identifier[InsurerNumber].use ..0
* identifier[InsurerNumber].type ..0
* identifier[InsurerNumber].system ^short = "保険者番号の名前空間を示すURIを指定"
* identifier[InsurerNumber].system ^definition = "保険者番号の名前空間を示すURIを指定。固定値"
* identifier[InsurerNumber].system MS
* identifier[InsurerNumber].system = "urn:oid:1.2.392.100495.20.3.61" (exactly)
* identifier[InsurerNumber].value ^short = "保険者番号"
* identifier[InsurerNumber].value ^definition = "保険者番号を半角数字で８ケタ以内の文字列で記述する。"
* identifier[InsurerNumber].value MS
* identifier[InsurerNumber].period ..0
* identifier[InsurerNumber].assigner ..0
* identifier contains publicPayer 0..1  MS
* identifier[publicPayer].id ..0
* identifier[publicPayer].use ..0
* identifier[publicPayer].type ..0
* identifier[publicPayer].system = "urn:oid:1.2.392.100495.20.3.71" (exactly)
* identifier[publicPayer].system ^short = "公費負担者番号"
* identifier[publicPayer].system ^definition = "保険種別が「8：公費」の場合は、公費負担者番号を記録する。それ以外の場合は、本要素は出現しない"
* identifier[publicPayer].system MS
* identifier[publicPayer].value ^short = "公費負担者番号"
* identifier[publicPayer].value ^definition = "公費負担者番号。\r\n医療券等に記載されている公費負担者番号８桁以内を半角数字で記録する。"
* identifier[publicPayer].value MS
* identifier[publicPayer].period ..0
* identifier[publicPayer].assigner ..0
* active ..0
* type 1..1 MS
* type.coding 1..1 MS
* type.coding.system = "http://terminology.hl7.org/CodeSystem/organization-type" (exactly)
* type.coding.system ^short = "施設種別コードのコード体系を識別するURI"
* type.coding.system ^definition = "施設種別コードのコード体系を識別するURI。固定値。"
* type.coding.system MS
* type.coding.code ^short = "施設種別コード"
* type.coding.code ^definition = "費用負担者が保険者の場合は\"ins\"。それ以外の場合は、公費負担者の場合には、その他を意味する \"other\"を指定。"
* name ^short = "保険者、公費受給者の名称文字列"
* name ^definition = "保険者、公費受給者の名称文字列。"
* name MS
* alias ..0
* telecom ..0
* address ..0
* partOf ..0
* contact ..0
* endpoint ..0