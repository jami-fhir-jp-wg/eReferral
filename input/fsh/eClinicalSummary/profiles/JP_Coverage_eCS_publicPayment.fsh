Profile: JP_Coverage_eCS_publicPayment
Parent: JP_Coverage
Id: JP-Coverage-eCS-publicPayment
Description: "公費負担情報　JP_Coverageの派生プロファイル"
* ^url = "http://jpfhir.jp/fhir/ePrescription/StructureDefinition/JP_Coverage_eCS_publicPayment"
* ^status = #draft
* text ^short = "このリソースのショートサマリーで人が読んでわかるテキスト表現"
* text ^definition = "このリソースのショートサマリーで人が読んでわかるテキスト表現"
* text.status ^short = "\"テキスト内容の全てがリソースのコンテンツから生成されたことを示す。\r\ngenerated　固定値"
* text.status ^definition = "\"テキスト内容の全てがリソースのコンテンツから生成されたことを示す。\r\ngenerated　固定値"
* text.div ^short = "本リソースの構造化情報から生成したテキスト表現\\\\r\\\\nXHTML形式。"
* text.div ^definition = "本リソースの構造化情報から生成したテキスト表現をいれてもよい。\\\\r\\\\nXHTML形式。"
* contained ..0
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension[insuredPersonSymbol] 0..0
* extension[insuredPersonNumber] 0..0
* extension[insuredPersonSubNumber] 0..0
* status = #active (exactly)
* status ^short = "リソースインスタンスのステータス"
* status ^definition = "リソースインスタンスのステータス。固定値active。真に有効な保険かどうかは意味しない。"
* type ^short = "保険種別コード"
* type 1.. MS
* type from http://jpfhir.jp/fhir/Common/ValueSet/mhlw-ePreCDA-insuranceCategory
* type.coding 1..1 MS
* type.coding.system 1.. MS
* type.coding.system = "urn:oid:1.2.392.100495.20.2.61" (exactly)
* type.coding.system ^short = "保険種別コード体系を識別するURI"
* type.coding.system ^definition = "保険種別コード　厚生労働省電子処方箋 CDA 記述仕様第１版　別表１１のOID"
* type.coding.code = #8 (exactly)
* type.coding.code 1..1 MS
* type.coding.code ^short = "保険種別コード 公費8"
* type.coding.code ^definition = "保険種別コード　厚生労働省電子処方箋 CDA 記述仕様第１版　別表１１のコード表に従う。\r\n8で固定。\r\n1 医保\r2 国保\r3 労災\r4 自賠責\r5 公害\r6 自費\r7 後期高齢者\r8 公費"
* type.coding.userSelected ..0
* type.text ..0
* policyHolder ..0
* subscriber ..0
* subscriberId 1.. MS
* subscriberId ^short = "公費受給者番号"
* subscriberId ^definition = "公費受給者番号。\r\n医療券等に記載されている受給者番号７桁を半角数字で記録する。\r\n受給者番号が７桁に満たない場合は、先頭から“0”を記録し、７桁で記録する。\r\n医療観察法（法別３０）の場合は、記録を省略する。"
* beneficiary ^short = "被給付者情報"
* beneficiary ^definition = "患者情報（Patientリソース）へのリテラル参照"
* beneficiary MS
* beneficiary.reference ^short = "PatientリソースのfullUrl要素に指定されるUUIDを指定"
* beneficiary.reference ^definition = "Budleリソースに記述されるPatientリソースのfullUrl要素に指定されるUUIDを指定"
* beneficiary.reference MS
* dependent ..0
* relationship ..0
* period ^short = "公費受給者証の有効期間"
* period ^definition = "公費受給者証の有効期間。公費受給者証に明示的に記載がある場合、かつ、医療機関がその情報を把握している場合のみ記録する。"
* period MS
* period.start ^short = "公費受給者証の有効期間の開始日"
* period.start ^definition = "公費受給者証の有効期間の開始日。資格取得日。ISO8601に準拠してyyyy_mm_dd形式で指定する。"
* period.start MS
* period.end ^short = "公費受給者証の有効期間の終了日"
* period.end ^definition = "公費受給者証の有効期間の終了日。資格喪失日。ISO8601に準拠してyyyy_mm_dd形式で指定する。"
* period.end MS
* payor 1..1 MS
* payor only Reference(JP_Organization_eCS_coveragePayer)
* payor ^short = "公費負担者情報"
* payor ^definition = "公費負担者を表すOrganizationリソースへの参照"
* class ..0
* order ..1
* network ..0
* costToBeneficiary ^short = "保険の自己負担率"
* costToBeneficiary ^definition = "保険の自己負担率。記録が可能な場合にのみ記録する。\r\n\r\nポリシーに詳細が記載されており、ヘルスカードに含まれている可能性のあるコストカテゴリと関連する金額を示す一連のコード。"
* costToBeneficiary MS
* costToBeneficiary.type 1.. MS
* costToBeneficiary.type ^short = "公費の自己負担率を表すことを示すタイプ情報"
* costToBeneficiary.type.coding 1..1 MS
* costToBeneficiary.type.coding.system 1.. MS
* costToBeneficiary.type.coding.system = "http://terminology.hl7.org/CodeSystem/coverage-copay-type" (exactly)
* costToBeneficiary.type.coding.system ^short = "保険における自己負担の種別を識別するコードのコード体系を識別するURI"
* costToBeneficiary.type.coding.system ^definition = "保険における自己負担の種別を識別するコードのコード体系を識別するURI。固定値。"
* costToBeneficiary.type.coding.code 1.. MS
* costToBeneficiary.type.coding.code = #copaypct (exactly)
* costToBeneficiary.type.coding.code ^short = "自己負担率を表すコード"
* costToBeneficiary.type.coding.code ^definition = "固定値　copaypct"
* costToBeneficiary.type.coding.display = "負担率" (exactly)
* costToBeneficiary.type.coding.display ^short = "コードの表示名"
* costToBeneficiary.type.coding.display MS
* costToBeneficiary.type.text ..0
* costToBeneficiary.value[x] only SimpleQuantity
* costToBeneficiary.value[x] ^short = "自己負担割合"
* costToBeneficiary.value[x] ^definition = "自己負担割合"
* costToBeneficiary.value[x] MS
* costToBeneficiary.value[x].value 1..1 MS
* costToBeneficiary.value[x].value ^short = "自己負担割合"
* costToBeneficiary.value[x].value ^definition = "自己負担割合を%で指定する。"
* costToBeneficiary.value[x].unit 1..1 MS
* costToBeneficiary.value[x].unit = "%" (exactly)
* costToBeneficiary.value[x].unit ^short = "単位"
* costToBeneficiary.value[x].unit ^definition = "人が解釈可能な単位文字列。固定値"
* costToBeneficiary.value[x].system = "http://unitsofmeasure.org" (exactly)
* costToBeneficiary.value[x].system 1..1 MS
* costToBeneficiary.value[x].system ^short = "単位コード"
* costToBeneficiary.value[x].system ^definition = "UCUMを識別するURI。"
* costToBeneficiary.value[x].code = #% (exactly)
* costToBeneficiary.value[x].code ^short = "パーセントを表すUCUMコード"
* costToBeneficiary.value[x].code ^definition = "固定値"
* costToBeneficiary.value[x].code 1..1 MS
* costToBeneficiary.exception ..0
* subrogation ..0
* contract ..0