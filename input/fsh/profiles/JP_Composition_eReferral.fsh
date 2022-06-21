/*
Invariant: checkValidCategoryTitle
Description: "【categoryコードとtitleは\"01:一般処方箋\"　または\"01:処方箋\"　\"02:麻薬処方箋\"　または\"03:分割処方箋\"のいずれかである。】"
Severity: #error
Expression: "((title='一般処方箋' and category.coding.code='01')
     or (title='処方箋' and category.coding.code='01')
     or (title='麻薬処方箋' and category.coding.code='02')
     or (title='分割処方箋' and category.coding.code='03'))"

Invariant: checkValidCategory
Description: "【categoryコードは\"01:処方箋\"　\"02:麻薬処方箋\"　または\"03:分割処方箋\"のいずれかである。】"
Severity: #error
Expression: "((category.coding.code='01') or (category.coding.code='02') or (category.coding.code='03'))"


Invariant: checkValidSections
Description: "【セクション構成は処方箋のとき01:処方情報セクションのみ、分割処方箋のとき11:分割処方箋セクションと12:別紙セクションの両方が存在する。】"
Severity: #error
Expression: "((category.coding.code='01' or category.coding.code='02') and (section.code.coding.where(code = '01')).exists())
or (category.coding.code='03' and (section.code.coding.where(code = '11')).exists() and (section.code.coding.where(code = '12')).exists())"
*/

Profile: JP_Composition_eReferral
Parent: Composition
Id: JP-Composition-eReferral
Description:  "処方情報のリソース構成情報と文書日付に関するCompositionの派生プロファイル"
// * obeys checkValidCategoryTitle
// * obeys checkValidCategory
// * obeys checkValidSections
* ^url = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Composition_eReferral"
* ^status = #draft
* text ^short = "読んで概略がわかるようにするためのテキスト情報"
* text ^definition = "読んで概略がわかるようにするためのテキスト情報。\r\n以降の構想的な要素のデータからシステムが自動生成すること。\r\n本リソースをテキストで表現したもので、内容を省略しても構わない。 このデータは人がこのリソースの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。 この内容と以降の構造化されたデータとの内容が不一致の場合には、この要素の内容は無視される。（本文書のすべてのリソースで同様とする）。"
* text.status ^short = "generated| extensions | additional | empty"
* text.status ^definition = "generated | extensions | additional | empty　のいずれかから選ぶことができるが、本仕様では、generatedに限定する。"
* contained ..0
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains $composition-clinicaldocument-versionNumber named version 0..1
* extension[version] ^short = "処方箋の文書バージョンを表す拡張"
* extension[version] ^min = 0
* extension[version] 1..1 MS
* extension[version].url 1..1 MS
* extension[version].value[x] ^short = "文書のバージョン番号を表す文字列。"
* extension[version].value[x] ^definition = "文書のバージョン番号を表す文字列。\r\n例 : 第１版は  \"1\" とする。"
* extension[version].value[x] 1..1 MS
* identifier 1.. MS
* identifier.system 1.. MS
* identifier.system = "http://jpfhir.jp/fhir/Common/IdSystem/resourceInstance-identifier" (exactly)
* identifier.system ^short = "処方箋番号の名前空間を表すURI。固定値。"
* identifier.system ^definition = "処方箋番号の名前空間を表すURI。固定値。"
* identifier.value 1.. MS
* identifier.value ^short = "処方箋番号。"
* identifier.value ^definition = "発行された処方情報のなかで一意に識別するID（処方箋番号）を設定する。\r\n処方箋を一意に識別できる番号または文字列で、施設固有の取り決めてもよい。\r\n処方箋IDの採番ルールは本仕様のスコープ外であるが、Identifier型のvalue要素に、保険医療機関番号（10桁）、発行年（4桁）、施設内において発行年内で一意となる番号（8桁）をハイフン(\"_\"：U+002D)で連結した文字列を指定する。"
* status = #final (exactly)
* status ^short = "この文書のステータス。"
* status ^definition = "この文書のステータス。\r\n仕様上は、preliminary | final | amended | entered_in_error　のいずれかを設定できるが、医療機関から登録される段階では、\"final\" でなければならない。"
* type ^short = "文書区分コード"
* type ^definition = "documentタイプのうち文書種別（処方、検査結果報告などの文書区分を識別する\r\nコード。\r\nLOINCコード表から適切なものを採用した本仕様のコード表を用いる。"
* type MS
* type.coding 1..1 MS
* type from http://jpfhir.jp/fhir/Common/ValueSet/doc-typecodes
* type.coding.system = "http://jpfhir.jp/fhir/Common/CodeSystem/doc-typecodes" (exactly)
* type.coding.system ^definition = "文書区分コードのコード体系を識別するURI。固定値"
* type.coding.system MS
* type.coding.version
* type.coding.code 1.. MS
* type.coding.code = #57833-6 (exactly)
* type.coding.code ^definition = "処方箋を表す文書区分コード。\"57833-6：処方箋\"を指定。固定値。"
* type.coding.display = "処方箋" (exactly)
* type.coding.display ^short = "文書区分コードの表示名。"
* type.coding.display ^definition = "文書区分コードの表示名。"
* type.coding.display MS
* type.coding.userSelected ..0
* type.text ..0
* category 1..1 MS
* category ^short = "処方箋区分コード"
* category ^definition = "麻薬処方と一般処方とを区別する処方箋区分コード。"
* category.coding 1..1 MS
* category.coding.system 1.. MS
* category.coding.system = "http://jpfhir.jp/fhir/eReferral/CodeSystem/prescription-category" (exactly)
* category.coding.system ^short = "処方箋区分コードのコード体系"
* category.coding.system ^definition = "処方箋区分コードのコード体系を識別するURI。固定値。"
* category.coding.code 1.. MS
* category.coding.code ^short = "処方箋区分コード"
* category.coding.code ^definition = "処方箋区分コード。\"01：処方箋\"、\"02：麻薬処方箋\"\r\n麻薬を一剤でも含む場合には、麻薬処方箋コードを設定する。03:一般分割処方箋は"
* category.coding.display ^short = "コードの表示名"
* category.coding.display ^definition = "コードの表示名。省略可能。\r\n\"処方箋\"　または　\"麻薬処方箋\"　または\"分割処方箋\""
* category.coding.display MS
* category.coding.userSelected ..0
* category.text ..0
* subject 1.. MS
* subject ^short = "患者情報を表すPatientリソースへの参照。"
* subject ^definition = "患者情報を表すPatientリソースへの参照。"
* subject.reference 1.. MS
* subject.reference ^short = "PatientリソースのfullUrl要素に指定されるUUIDを指定。"
* subject.reference ^definition = "Bundleリソースに記述されるPatientリソースのfullUrl要素に指定されるUUIDを指定。\r\n例：\"urn:uuid:11f0a9a6_a91d_3aef_fc4e_069995b89c4f\""
* encounter ^short = "処方箋が出された受診時状況情報を表すEncounterリソースへの参照"
* encounter ^definition = "処方箋が出された受診時状況情報を表すEncounterリソースへの参照"
* encounter MS
* encounter.reference ^short = "EncounterリソースのfullUrl要素に指定されるUUIDを指定。"
* encounter.reference ^definition = "Bundleリソースに記述されるEncounterリソースのfullUrl要素に指定されるUUIDを指定。\r\n例：\"urn:uuid:12f0a9a6_a91d_8aef_d14e_069795b89c9f\""
* encounter.reference MS
* date ^definition = "このリソースを作成または最後に編集した日時。ISO8601に準拠し、秒の精度まで記録し、タイムゾーンも付記する。\r\n午前0時を\"24:00\"と記録することはできないため\"00:00\"と記録すること。　\r\n例：\"2020_08_21T12:28:21+09:00\""
* date MS
* author ..2 MS
* author ^slicing.discriminator.type = #profile
* author ^slicing.discriminator.path = "resolve()"
* author ^slicing.rules = #open
* author ^short = "処方医と処方医療機関とへの参照。"
* author ^definition = "処方医を表すPractitionerRoleリソースへの参照、および,処方医療機関か、または処方診療科と処方医療機関を表すOrganizationリソースへの参照の2つのReferenceを繰り返す。"
* title MS
* confidentiality ..0
* attester ..0
* custodian 1.. MS
* custodian ^short = "処方箋の作成・修正を行い、処方箋の管理責任を持つ医療機関（Organizationリソース）への参照"
* custodian ^definition = "処方箋の作成・修正を行い、処方箋の管理責任を持つ医療機関（Organizationリソース）への参照。\r\n処方医療機関と同一の組織の場合、custodian要素からは処方医療機関を表すOrganizationリソースへの参照となる。\r\n処方医療機関とは異なる組織である場合は、処方医療機関とは別のOrganizationリソースで表現し、custodian要素からはそのOrganizationリソースを参照する。"
* custodian.reference 1..
* custodian.reference ^short = "custodianに対応するOrganizationリソースのfullUrl要素に指定されるUUIDを指定。"
* custodian.reference ^definition = "custodianに対応するOrganizationリソースのfullUrl要素に指定されるUUIDを指定。\r\n例：\"urn:uuid:179f9f7f_e546_04c2_6888_a9e0b24e5720\""
* relatesTo ..0
* event 1..1 MS
* event ^short = "処方箋としての交付日とその有効期限。"
* event ^definition = "処方箋としての交付日とその有効期限。"
* event.code 1..1 MS
* event.code.text 1.. MS
* event.code.text = "処方箋交付" (exactly)
* event.period 1.. MS
* event.period ^short = "有効期間"
* event.period ^definition = "有効期間を開始日と終了日で記述する。"
* event.period.start 1.. MS
* event.period.start ^short = "有効期間開始日（交付日）"
* event.period.start ^definition = "処方箋交付日。ISO8601に準拠yyyy_mm_dd形式で記述する。\r\n有効期間の開始日付となる。"
* event.period.end ^short = "処方箋の有効期限"
* event.period.end ^definition = "処方箋の有効期限。\r\n省略された場合は、法律で定められた処方箋の有効期限と解釈する。"
* event.period.end MS
* event.detail ..0
* section ..2 
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding.code"
* section ^slicing.rules = #open
* section contains prescriptionInformation 0..1 MS
    and bunkatsuInformation  0..1 MS
    and bunkatsuBesshiInformation   0..1 MS

* section[bunkatsuInformation] ^short = "分割処方箋セクション。"
* section[bunkatsuInformation] ^definition = "分割処方箋セクション。各分割処方箋を記述したBundleリソースへの参照をその分割数分だけ含む。"
* section[bunkatsuInformation].title 1.. MS
* section[bunkatsuInformation].title = "分割処方箋セクション" (exactly)
* section[bunkatsuInformation].title ^short = "セクションタイトル"
* section[bunkatsuInformation].title ^definition = "セクションタイトル。固定値。"
* section[bunkatsuInformation].code 1.. MS
* section[bunkatsuInformation].code ^short = "セクション区分コード"
* section[bunkatsuInformation].code ^definition = "セクション区分コード"
* section[bunkatsuInformation].code.coding 1..1 MS
* section[bunkatsuInformation].code.coding.system 1.. MS
* section[bunkatsuInformation].code.coding.system = "http://jpfhir.jp/fhir/eReferral/CodeSystem/prescription-section" (exactly)
* section[bunkatsuInformation].code.coding.system ^short = "セクション区分コードのコード体系"
* section[bunkatsuInformation].code.coding.system ^definition = "セクション区分コードのコード体系を識別するURI。固定値。"
* section[bunkatsuInformation].code.coding.code 1.. MS
* section[bunkatsuInformation].code.coding.code = #11 (exactly)
* section[bunkatsuInformation].code.coding.code ^short = "セクション区分のコード値"
* section[bunkatsuInformation].code.coding.code ^definition = "処方情報セクションを表すセクション区分のコード値。\r\n固定値。"
* section[bunkatsuInformation].code.coding.display = "分割処方箋セクション" (exactly)
* section[bunkatsuInformation].code.coding.display ^short = "セクション区分コードの表示名"
* section[bunkatsuInformation].code.coding.display ^definition = "セクション区分コードの表示名。"
* section[bunkatsuInformation].code.coding.display MS
* section[bunkatsuInformation].code.coding.userSelected ..0
* section[bunkatsuInformation].code.text ..0
* section[bunkatsuInformation].text ^short = "セクションの内容を表す文字列"
* section[bunkatsuInformation].text ^definition = "本セクションの内容をテキストで表現した文字列。内容を省略しても構わない。 このデータは人がこのセクションの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。"
* section[bunkatsuInformation].text MS
* section[bunkatsuInformation].text.status MS
* section[bunkatsuInformation].text.status = #generated (exactly)
* section[bunkatsuInformation].text.status ^short = "セクションの内容作成状態コード"
* section[bunkatsuInformation].text.status ^definition = "generated | extensions | additional | empty　から　\"generated\" の固定値。"
* section[bunkatsuInformation].text.div ^short = "xhtml 形式のテキスト"
* section[bunkatsuInformation].text.div ^definition = "本セクションの内容を xhtml 形式のテキストで表現した文字列。内容を省略しても構わない。 \r\nこのデータは人がこのセクションの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。\r\nテキストは構造化された情報から自動的にシステムが生成したものとし、それ以上に情報を追加してはならない。"
* section[bunkatsuInformation].mode ..0
* section[bunkatsuInformation].orderedBy ..0
* section[bunkatsuInformation].entry only Reference(JP_Bundle_eReferral)
* section[bunkatsuInformation].entry ^short = "分割処方の各Bundleリソース"
* section[bunkatsuInformation].entry ^definition = "分割処方の各Bundleリソース"
* section[bunkatsuInformation].entry.reference ^short = "分割処方の各Bundleリソースへの参照"
* section[bunkatsuInformation].entry.reference ^definition = "分割処方箋に含まれる個々の処方箋に対応するBundleリソースへの参照。"
* section[bunkatsuInformation].entry.reference MS

* section[bunkatsuBesshiInformation] ^short = "分割処方箋の別紙セクション。"
* section[bunkatsuBesshiInformation] ^definition = "分割処方箋の別紙セクション。分割処方箋に含まれる別紙に対応したOrganizationリソースが本セクションに含まれる。"
* section[bunkatsuBesshiInformation].title 1.. MS
* section[bunkatsuBesshiInformation].title = "別紙セクション" (exactly)
* section[bunkatsuBesshiInformation].title ^short = "セクションタイトル"
* section[bunkatsuBesshiInformation].title ^definition = "セクションタイトル。固定値。"
* section[bunkatsuBesshiInformation].code 1.. MS
* section[bunkatsuBesshiInformation].code ^short = "セクション区分コード"
* section[bunkatsuBesshiInformation].code ^definition = "セクション区分コード"
* section[bunkatsuBesshiInformation].code.coding 1..1 MS
* section[bunkatsuBesshiInformation].code.coding.system 1.. MS
* section[bunkatsuBesshiInformation].code.coding.system = "http://jpfhir.jp/fhir/eReferral/CodeSystem/prescription-section" (exactly)
* section[bunkatsuBesshiInformation].code.coding.system ^short = "セクション区分コードのコード体系"
* section[bunkatsuBesshiInformation].code.coding.system ^definition = "セクション区分コードのコード体系を識別するURI。固定値。"
* section[bunkatsuBesshiInformation].code.coding.code 1.. MS
* section[bunkatsuBesshiInformation].code.coding.code = #12 (exactly)
* section[bunkatsuBesshiInformation].code.coding.code ^short = "セクション区分のコード値"
* section[bunkatsuBesshiInformation].code.coding.code ^definition = "処方情報セクションを表すセクション区分のコード値。\r\n固定値。"
* section[bunkatsuBesshiInformation].code.coding.display = "別紙セクション" (exactly)
* section[bunkatsuBesshiInformation].code.coding.display ^short = "セクション区分コードの表示名"
* section[bunkatsuBesshiInformation].code.coding.display ^definition = "セクション区分コードの表示名。"
* section[bunkatsuBesshiInformation].code.coding.display MS
* section[bunkatsuBesshiInformation].code.coding.userSelected ..0
* section[bunkatsuBesshiInformation].code.text ..0
* section[bunkatsuBesshiInformation].text ^short = "セクションの内容を表す文字列"
* section[bunkatsuBesshiInformation].text ^definition = "本セクションの内容をテキストで表現した文字列。内容を省略しても構わない。 このデータは人がこのセクションの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。"
* section[bunkatsuBesshiInformation].text MS
* section[bunkatsuBesshiInformation].text.status MS
* section[bunkatsuBesshiInformation].text.status = #generated (exactly)
* section[bunkatsuBesshiInformation].text.status ^short = "セクションの内容作成状態コード"
* section[bunkatsuBesshiInformation].text.status ^definition = "generated | extensions | additional | empty　から　\"generated\" の固定値。"
* section[bunkatsuBesshiInformation].text.div ^short = "xhtml 形式のテキスト"
* section[bunkatsuBesshiInformation].text.div ^definition = "本セクションの内容を xhtml 形式のテキストで表現した文字列。内容を省略しても構わない。 \r\nこのデータは人がこのセクションの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。\r\nテキストは構造化された情報から自動的にシステムが生成したものとし、それ以上に情報を追加してはならない。"
* section[bunkatsuBesshiInformation].mode ..0
* section[bunkatsuBesshiInformation].orderedBy ..0
* section[bunkatsuBesshiInformation].entry only Reference(JP_Organization_eReferral_issuer)
* section[bunkatsuBesshiInformation].entry ^short = "別紙に含まれる処方医療機関情報に対応するOrganizationリソース"
* section[bunkatsuBesshiInformation].entry ^definition = "別紙に含まれる処方医療機関情報に対応するOrganizationリソース"
* section[bunkatsuBesshiInformation].entry.reference ^short = "別紙に含まれる処方医療機関情報に対応するOrganizationリソースへの参照"
* section[bunkatsuBesshiInformation].entry.reference ^definition = "別紙に含まれる処方医療機関情報に対応するOrganizationリソースへの参照"
* section[bunkatsuBesshiInformation].entry.reference MS

* section[prescriptionInformation] ^short = "処方情報セクション。"
* section[prescriptionInformation] ^definition = "処方情報セクション。\r\n処方箋に含まれる処方情報に関連するリソースが全て本セクションに含まれる。"
* section[prescriptionInformation].title 1.. MS
* section[prescriptionInformation].title = "処方情報" (exactly)
* section[prescriptionInformation].title ^short = "セクションタイトル"
* section[prescriptionInformation].title ^definition = "セクションタイトル。固定値。"
* section[prescriptionInformation].code 1.. MS
* section[prescriptionInformation].code ^short = "セクション区分コード"
* section[prescriptionInformation].code ^definition = "セクション区分コード"
* section[prescriptionInformation].code.coding 1..1 MS
* section[prescriptionInformation].code.coding.system 1.. MS
* section[prescriptionInformation].code.coding.system = "http://jpfhir.jp/fhir/eReferral/CodeSystem/prescription-section" (exactly)
* section[prescriptionInformation].code.coding.system ^short = "セクション区分コードのコード体系"
* section[prescriptionInformation].code.coding.system ^definition = "セクション区分コードのコード体系を識別するURI。固定値。"
* section[prescriptionInformation].code.coding.code 1.. MS
* section[prescriptionInformation].code.coding.code = #01 (exactly)
* section[prescriptionInformation].code.coding.code ^short = "セクション区分のコード値"
* section[prescriptionInformation].code.coding.code ^definition = "処方情報セクションを表すセクション区分のコード値。\r\n固定値。"
* section[prescriptionInformation].code.coding.display = "処方情報セクション" (exactly)
* section[prescriptionInformation].code.coding.display ^short = "セクション区分コードの表示名"
* section[prescriptionInformation].code.coding.display ^definition = "セクション区分コードの表示名。"
* section[prescriptionInformation].code.coding.display MS
* section[prescriptionInformation].code.coding.userSelected ..0
* section[prescriptionInformation].code.text ..0
* section[prescriptionInformation].author ..0
* section[prescriptionInformation].focus ..0
* section[prescriptionInformation].text ^short = "セクションの内容を表す文字列"
* section[prescriptionInformation].text ^definition = "本セクションの内容をテキストで表現した文字列。内容を省略しても構わない。 このデータは人がこのセクションの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。"
* section[prescriptionInformation].text MS
* section[prescriptionInformation].text.status MS
* section[prescriptionInformation].text.status = #generated (exactly)
* section[prescriptionInformation].text.status ^short = "セクションの内容作成状態コード"
* section[prescriptionInformation].text.status ^definition = "generated | extensions | additional | empty　から　\"generated\" の固定値。"
* section[prescriptionInformation].text.div ^short = "xhtml 形式のテキスト"
* section[prescriptionInformation].text.div ^definition = "本セクションの内容を xhtml 形式のテキストで表現した文字列。内容を省略しても構わない。 \r\nこのデータは人がこのセクションの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。\r\nテキストは構造化された情報から自動的にシステムが生成したものとし、それ以上に情報を追加してはならない。"
* section[prescriptionInformation].mode ..0
* section[prescriptionInformation].orderedBy ..0
* section[prescriptionInformation].entry ^slicing.discriminator.type = #profile
* section[prescriptionInformation].entry ^slicing.discriminator.path = "resolve()"
* section[prescriptionInformation].entry ^slicing.rules = #open
* section[prescriptionInformation].entry contains
    healthInsurancePublic 0..1 MS and
    commonPayerOrganization 0.. MS and
    publicPayment 0..1 MS and
    medicationRequest 0.. MS and
    communication 0.. MS
* section[prescriptionInformation].entry[healthInsurancePublic] only Reference(JP_Coverage_eReferral_insurance)
* section[prescriptionInformation].entry[healthInsurancePublic] ^short = "文書が作成された診療の健康保険に関するCoverageリソース"
* section[prescriptionInformation].entry[healthInsurancePublic] ^definition = "文書が作成された診療の健康保険に関するCoverageリソース。"
* section[prescriptionInformation].entry[healthInsurancePublic].reference ^short = "リソースへの参照"
* section[prescriptionInformation].entry[healthInsurancePublic].reference ^definition = "Bundleリソースに記述されるそのリソースのfullUrl要素に指定されるUUIDを指定。"
* section[prescriptionInformation].entry[healthInsurancePublic].reference MS
* section[prescriptionInformation].entry[commonPayerOrganization] only Reference(JP_Organization_eReferral_coveragePayer)
* section[prescriptionInformation].entry[commonPayerOrganization] ^short = "医療保険者組織またはublicPayment要素に関係する費用負担者に関するOrganizationリソースへの情報"
* section[prescriptionInformation].entry[commonPayerOrganization] ^definition = "医療保険者組織またはublicPayment要素に関係する費用負担者に関するOrganizationリソースへの情報。"
* section[prescriptionInformation].entry[commonPayerOrganization].reference ^short = "リソースへの参照"
* section[prescriptionInformation].entry[commonPayerOrganization].reference ^definition = "Bundleリソースに記述されるそのリソースのfullUrl要素に指定されるUUIDを指定。"
* section[prescriptionInformation].entry[commonPayerOrganization].reference MS
* section[prescriptionInformation].entry[publicPayment] only Reference(JP_Coverage_eReferral_publicPayment)
* section[prescriptionInformation].entry[publicPayment] ^sliceName = "publicPayment"
* section[prescriptionInformation].entry[publicPayment] ^short = "公費負担に関する情報に関するCovegareリソースへの情報"
* section[prescriptionInformation].entry[publicPayment] ^definition = "公費負担に関する情報に関するCovegareリソースへの情報。"
* section[prescriptionInformation].entry[publicPayment].reference ^short = "リソースへの参照"
* section[prescriptionInformation].entry[publicPayment].reference ^definition = "Bundleリソースに記述されるそのリソースのfullUrl要素に指定されるUUIDを指定。"
* section[prescriptionInformation].entry[publicPayment].reference MS
* section[prescriptionInformation].entry[medicationRequest] only Reference(JP_MedicationRequest_eReferral)
* section[prescriptionInformation].entry[medicationRequest] ^sliceName = "medicationRequest"
* section[prescriptionInformation].entry[medicationRequest] ^short = "ひとつの医薬品の処方指示に関するMedicationRequestリソースへの情報"
* section[prescriptionInformation].entry[medicationRequest] ^definition = "ひとつの医薬品のに関するMedicationRequestリソースへの情報。"
* section[prescriptionInformation].entry[medicationRequest].reference ^short = "リソースへの参照"
* section[prescriptionInformation].entry[medicationRequest].reference ^definition = "Bundleリソースに記述されるそのリソースのfullUrl要素に指定されるUUIDを指定。"
* section[prescriptionInformation].entry[medicationRequest].reference MS
* section[prescriptionInformation].entry[communication] only Reference(JP_Communication_eReferral)
* section[prescriptionInformation].entry[communication] ^sliceName = "communication"
* section[prescriptionInformation].entry[communication] ^short = "処方箋全体の指示、明細単位での備考情報に関するCommunicationリソースへの情報"
* section[prescriptionInformation].entry[communication] ^definition = "処方箋全体の指示、明細単位での備考情報に関するCommunicationリソースへの情報。"
* section[prescriptionInformation].entry[communication].reference ^short = "リソースへの参照"
* section[prescriptionInformation].entry[communication].reference ^definition = "Bundleリソースに記述されるそのリソースのfullUrl要素に指定されるUUIDを指定。"
* section[prescriptionInformation].entry[communication].reference MS
* section[prescriptionInformation].emptyReason ..0
* section[prescriptionInformation].section ..0