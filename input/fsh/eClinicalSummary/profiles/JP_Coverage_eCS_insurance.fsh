Profile: JP_Coverage_eCS_insurance
Parent: JP_Coverage
Id: JP-Coverage-eCS-insurance
Description: "保険情報　Coverageリソースプロファイル　JP_Coverageの派生プロファイル"
* ^url = "http://jpfhir.jp/fhir/ePrescription/StructureDefinition/JP_Coverage_eCS_insurance"
* ^status = #draft
* contained ..0
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension[insuredPersonSymbol] 0..1 MS
* extension[insuredPersonSymbol] ^short = "被保険者証記号情報"
* extension[insuredPersonSymbol].url MS
* extension[insuredPersonSymbol].value[x] 1.. MS
* extension[insuredPersonSymbol].value[x] ^short = "被保険者証記号"
* extension[insuredPersonSymbol].value[x] ^definition = "被保険者証記号。記録形式は「オンライン又は光ディスク等による請求に係る記録条件仕様（医科用）」に従う。\r\n被保険者証（手帳）等の記号。英数又は漢字、最大３８ バイト。１ 健康保険被保険者証、船員保険被保険者証、受給資格者票及び国民健康保険被保険者証等の「記号及び番号」欄の記号を記録する。英数モードと漢字モードの文字を混在して記録しない。番号のみ設定されている場合は、記録を省略する。記号と番号を合せた文字数の上限は、モードごとに次のとおりとする。英数１９バイト、漢字１９バイト。"
* extension[insuredPersonNumber] 0..1 MS
* extension[insuredPersonNumber] ^short = "被保険者証番号情報"
* extension[insuredPersonNumber] ^definition = "被保険者証番号を表す拡張「insuredPersonNumber」。\r\n保険種別が「1：医保」、「2：国保」、「7：後期高齢者」の場合に記録する。\r\nそれ以外の場合は、本拡張要素自体出現しない。"
* extension[insuredPersonNumber].url MS 
* extension[insuredPersonNumber].value[x] 1.. MS
* extension[insuredPersonNumber].value[x] ^short = "被保険者証番号"
* extension[insuredPersonNumber].value[x] ^definition = "被保険者証番号。記録形式は「オンライン又は光ディスク等による請求に係る記録条件仕様（医科用）」に従う。\r\n被保険者証（手帳）等の番号。最大バイト数３８，英数モードまたは漢字モード。１ 健康保険被保険者証、船員保険被保険者証、受給資格者票及び国民健康保険被保険者証等の「記号及び番号」欄の番号を記録する。後期高齢者被保険者証の被保険者番号を記録する。英数モードと漢字モードの文字を混在して記\r\n録しない。バイト数の上限については被保険者記号の説明を参照のこと。"
* extension[insuredPersonSubNumber] 0..1 MS
* extension[insuredPersonSubNumber] ^short = "被保険者証等「枝番」情報"
* extension[insuredPersonSubNumber] ^definition = "被保険者証等に「枝番」が記載されていない場合は、記録を省略しても差し支えない。保険者が後期高齢者医療である場合又は負担者種別が公費負担医療であ場合は、記録を省略する。"
* extension[insuredPersonSubNumber].url MS
* extension[insuredPersonSubNumber].value[x] 1.. MS
* extension[insuredPersonSubNumber].value[x] ^short = "個人単位被保険者番号（枝番）"
* extension[insuredPersonSubNumber].value[x] ^definition = "被保険者証記号・番号に対する個人単位被保険者番号（枝番）。「オンライン又は光ディスク等による請求に係る記録条件仕様（医科用）」に従い、桁数が2桁に満たない場合は、先頭に\"0\"を記録し2桁で記録する。\r\n最大２バイトで数字半角文字。\r\n電子資格確認を行った場合は、資格確認時にオンライン資格確認等システムから通知した枝番を記録する。健康保険被保険者証、受給資格者票及び国民健康保険被保険者証等による資格確認を行った場合は、当該証の「枝番」欄の番号を記録する。\r\n 「枝番」が２桁に満たない場合は、先頭に“0”を記録し、２桁で記録する。\r\n被保険者証等に「枝番」が記載されていない場合は、記録を省略しても差し支えない。保険者が後期高齢者医療である場合又は負担者種別が公費負担医療であ場合は、記録を省略する。"
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
* type.coding.system ^definition = "保険種別コード　厚生労働省電子処方箋等の CDA 記述仕様第１版　別表１１のOID"
* type.coding.code ^short = "保険種別コード"
* type.coding.code ^definition = "保険種別コード　厚生労働省電子処方箋等の医療 CDA 記述仕様第１版　別表１１のコード表に従う。8以外を使用する。\r\n1 医保\r2 国保\r3 労災\r4 自賠責\r5 公害\r6 自費\r7 後期高齢者\r8 公費"
* type.coding.code 1.. MS
* type.coding.userSelected ..0
* type.text ..0
* policyHolder ..0
* subscriber ..0
* subscriberId ..0
* beneficiary MS
* beneficiary ^short = "被給付者情報"
* beneficiary ^definition = "この保険で給付される患者情報（Patientリソース）へのリテラル参照"
* beneficiary.reference ^short = "PatientリソースのfullUrl要素に指定されるUUIDを指定"
* beneficiary.reference ^definition = "Budleリソースに記述されるPatientリソースのfullUrl要素に指定されるUUIDを指定"
* beneficiary.reference MS
* dependent ^short = "被保険者番号（枝番）"
* dependent ^definition = "被保険者証記号・番号に対する個人単位被保険者番号（枝番）。\r\n被保険者番号の枝番を記述する拡張要素と同一の値を記述すること。"
* dependent MS
* relationship 1.. MS
* relationship.coding 1..1 MS
* relationship.coding.system = "urn:oid:1.2.392.100495.20.2.62" (exactly)
* relationship.coding.system ^short = "コード体系を識別するURI"
* relationship.coding.system ^definition = "被保険者区分コードのコード体系を識別するURI。厚生労働省電子処方箋等の医療文書 CDA 記述仕様第１版　別表１２のOID"
* relationship.coding.system MS
* relationship.coding.code ^short = "被保険者区分コード"
* relationship.coding.code ^definition = "被保険者区分コード。厚生労働省電子処方箋 CDA 記述仕様第１版　別表１２に従う。\r\n1 被保険者\r2 被扶養者"
* relationship.coding.code MS
* relationship.coding.display ^short = "コードに対応する表示文字列"
* relationship.coding.display ^definition = "以下の文字列のいずれかを設定するが、省略可能。\r\nコード1　文字列： \"被保険者\"\rコード2 　文字列：\"被扶養者\""
* relationship.coding.display MS
* relationship.coding.userSelected ..0
* relationship.text ..0
* period ^short = "保険証の有効期間"
* period ^definition = "保険証の有効期間。保険証に明示的に記載がある場合、かつ、医療機関がその情報を把握している場合のみ記録する。"
* period MS
* period.start ^short = "保険証の有効期間の開始日"
* period.start ^definition = "保険証の有効期間の開始日。資格取得日。ISO8601に準拠してyyyy_mm_dd形式で指定する。"
* period.start MS
* period.end ^short = "保険証の有効期間の終了日"
* period.end ^definition = "保険証の有効期間の終了日。資格喪失日。ISO8601に準拠してyyyy_mm_dd形式で指定する。"
* period.end MS
* payor ^slicing.discriminator.type = #profile
* payor ^slicing.discriminator.path = "resolve()"
* payor ^slicing.rules = #open
* payor 1..1 MS
* payor contains
    insurer 0..1 MS and
    selfPayment 0..1 MS
* payor[insurer] only Reference(JP_Organization_eCS_coveragePayer)
* payor[insurer] MS
* payor[insurer] ^short = "保険者情報"
* payor[insurer] ^definition = "保険者を表すOrganizationリソースへの参照"
* payor[insurer].reference ^short = "OrganizationリソースのfullUrl要素に指定されるUUIDを指定"
* payor[insurer].reference ^definition = "Bundleリソースに記述される保険者を表すOrganizationリソースのfullUrl要素に指定されるUUIDを指定。\r\n自費以外の場合に使用する。"
* payor[insurer].reference MS
* payor[selfPayment] only Reference(JP_Patient_eCS)
* payor[selfPayment] MS
* payor[selfPayment].reference ^short = "PatientリソースのfullUrl要素に指定されるUUIDを指定"
* payor[selfPayment].reference ^definition = "Bundleリソースに記述される受給者本人（患者）を表すPatientリソースのfullUrl要素に指定されるUUIDを指定。\r\n自費の場合に使用する。"
* payor[selfPayment].reference MS
* class ..0
* order ..0
* network ..0
* costToBeneficiary ^short = "自己負担率"
* costToBeneficiary ^definition = "自己負担率。記録が可能な場合にのみ記録する。"
* costToBeneficiary MS
* costToBeneficiary.type 1.. MS
* costToBeneficiary.type.coding 1..1 MS
* costToBeneficiary.type.coding.system 1.. MS
* costToBeneficiary.type.coding.system = "http://terminology.hl7.org/CodeSystem/coverage-copay-type" (exactly)
* costToBeneficiary.type.coding.system ^short = "自己負担の種別を識別するコードのコード体系を識別するURI"
* costToBeneficiary.type.coding.system ^definition = "自己負担の種別を識別するコードのコード体系を識別するURI。固定値。"
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
* costToBeneficiary.value[x].value ^definition = "自己負担割合を%で指定する。\r\n例）数値で　 10"
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