Profile: JP_Bundle_CCLIX
Parent: Bundle
Id: JP-Bundle-CCLIX
Description: """医療情報交換のために使用される診療関連の文書形式の情報を記述するためのBundleリソースの共通プロファイル。
このリソースのインスタンスだけで、必要な参照情報はすべて包含され、外部のリソースインスタンスへの外部参照を持たないため作成した医療機関を超えた情報交換に使用できる。"""
* ^url = "http://jpfhir.jp/fhir/CCLIX/StructureDefinition/JP_Bundle_CCLIX"
* ^status = #draft
* . ^short = "Contains a collection of resources リソース集合を含む文書バンドル"
* . ^definition = "A container for a collection of resources.\r\nリソース集合のためのコンテナ\r\n診療情報交換のための文書形式のバンドルの共通プロファイル"
* type = #document (exactly)
* type ^definition = "このバンドルの目的コード。本プロファイルでは document 固定とする。\r\n（document | message | transaction | transaction_response | batch | batch_response | history | searchset | collection）"
* type MS
* timestamp 1.. MS
* timestamp ^short = "このバンドルリソースのインスタンスが作成された日時。"
* timestamp ^definition = "このリソースを生成した日時。時刻の精度はミリ秒とし、タイムゾーンを含めること。　例：\"2021-02-01T13:28:17.239+09:00\""
* total ..0
* link ^definition = "A series of links that provide context to this bundle.\r\nこのBundleへ文脈情報を付与するための一連のリンク情報。"
* link ^comment = "使用予定はない。　\r\n\r\nBoth Bundle.link and Bundle.entry.link are defined to support providing additional context when Bundles are used (e.g. [HATEOAS](http://en.wikipedia.org/wiki/HATEOAS)). \n\nBundle.entry.link corresponds to links found in the HTTP header if the resource in the entry was [read](http.html#read) directly.\n\nThis specification defines some specific uses of Bundle.link for [searching](search.html#conformance) and [paging](http.html#paging), but no specific uses for Bundle.entry.link, and no defined function in a transaction _ the meaning is implementation specific."
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    composition 1..1 MS and
    patient 1..1 MS and
    encounterOnDocument 0..1 MS and
    healthInsurancePublic 0.. MS and
    publicPayment 0.. and
    commonPayerOrganization 0..2 MS and
    custodianOrganization 1..1 MS and
    custodianDepartmentOfOrganization 0..1 MS and
    authorisedAuthorRole 0..1 MS and
    authorisedAuthor 0..1 MS
* entry[composition] ^short = "documentタイプのBundleリソースの先頭entryはCompositionリソース。"
* entry[composition] ^definition = "compositionリソースのエントリー。"
* entry[composition].fullUrl 1.. MS
* entry[composition].fullUrl ^short = "埋め込まれているCompositionリソースを一意に識別するためのUUID"
* entry[composition].fullUrl ^definition = "埋め込まれているCompositionリソースを一意に識別するためのUUID。"
* entry[composition].resource 1.. MS
* entry[composition].resource only Composition
* entry[composition].resource ^short = "Compositionリソースのインスタンス本体"
* entry[composition].resource ^definition = "Compositionリソースのインスタンス本体。"
* entry[composition].search ..0
* entry[composition].request ..0
* entry[composition].response ..0
* entry[patient] ^short = "Patientリソース"
* entry[patient] ^definition = "Patientリソースのエントリー。"
* entry[patient].fullUrl 1.. MS
* entry[patient].fullUrl ^short = "埋め込まれているPatientリソースを一意に識別するためのUUID"
* entry[patient].fullUrl ^definition = "埋め込まれているPatientリソースを一意に識別するためのUUID。"
* entry[patient].resource 1.. MS
* entry[patient].resource only JP_Patient
* entry[patient].resource ^short = "Patientリソースのインスタンス本体"
* entry[patient].resource ^definition = "Patientリソースのインスタンス本体。"
* entry[patient].search ..0
* entry[patient].request ..0
* entry[patient].response ..0
* entry[encounterOnDocument] ^short = "文書作成時の医療側と患者側との接触関係の情報"
* entry[encounterOnDocument] ^definition = "医療側と患者側との接触関係の情報をEncounterリソースで記述する。"
* entry[encounterOnDocument] ^comment = "文書が作成された診療場面の情報を表すEncounter情報への参照である。\r\n外来診察で作成された文書の場合には、その外来受診を表すEncounter情報。\r\n入院時、入院中、退院時の場合には、その時点での病棟情報などを表すEncounter情報。"
* entry[encounterOnDocument].fullUrl 1.. MS
* entry[encounterOnDocument].fullUrl ^short = "埋め込まれているEncounterリソースを一意に識別するためのUUID"
* entry[encounterOnDocument].fullUrl ^definition = "埋め込まれているEncounterリソースを一意に識別するためのUUID。"
* entry[encounterOnDocument].resource 1.. MS
* entry[encounterOnDocument].resource only JP_Encounter
* entry[encounterOnDocument].resource ^short = "Encounterリソースのインスタンス本体"
* entry[encounterOnDocument].resource ^definition = "Encounterリソースのインスタンス本体。"
* entry[encounterOnDocument].search ..0
* entry[encounterOnDocument].request ..0
* entry[encounterOnDocument].response ..0
* entry[healthInsurancePublic] ^short = "文書が作成された診療の健康保険に関する情報。"
* entry[healthInsurancePublic] ^definition = "文書が作成された診療の健康保険に関する情報をCovarageリソースで記述する。\r\nこの文書の作成、あるいはこの文書の内容が実施される場合に適用される（された）医療保険の情報。\r\n保険診療に関わらず作成された文書や、文書内容が保険診療により実施されるのではない場合、文書の用途の観点から保険情報が必須でない場合には、省略できる。"
* entry[healthInsurancePublic].fullUrl 1.. MS
* entry[healthInsurancePublic].fullUrl ^short = "埋め込まれているCoverageリソースを一意に識別するためのUUID"
* entry[healthInsurancePublic].fullUrl ^definition = "埋め込まれているCoverageリソースを一意に識別するためのUUID。"
* entry[healthInsurancePublic].resource 1.. MS
* entry[healthInsurancePublic].resource only JP_Coverage
* entry[healthInsurancePublic].resource ^short = "Coverageリソースのインスタンス本体"
* entry[healthInsurancePublic].resource ^definition = "Coverageリソースのインスタンス本体。"
* entry[healthInsurancePublic].search ..0
* entry[healthInsurancePublic].request ..0
* entry[healthInsurancePublic].response ..0
* entry[publicPayment] ^short = "公費負担に関する情報"
* entry[publicPayment] ^definition = "公費負担に関する情報をCovarageリソースで記述する。\r\nこの文書の作成、あるいはこの文書の内容が実施される場合に適用される（された）医療保険の情報。\r\n公費負担によらず作成された文書や、文書内容が公費負担により実施されるのではない場合、文書の用途の観点から公費負担情報が必須でない場合には、省略できる。複数の公費負担情報を必要とする場合には、繰り返しで記述する。"
* entry[publicPayment].fullUrl 1.. MS
* entry[publicPayment].fullUrl ^short = "埋め込まれているCoverageリソースを一意に識別するためのUUID"
* entry[publicPayment].fullUrl ^definition = "埋め込まれているCoverageリソースを一意に識別するためのUUID。"
* entry[publicPayment].resource 1..
* entry[publicPayment].resource only JP_Coverage
* entry[publicPayment].resource ^short = "Coverageリソースのインスタンス本体"
* entry[publicPayment].resource ^definition = "Coverageリソースのインスタンス本体。"
* entry[publicPayment].search ..0
* entry[publicPayment].request ..0
* entry[publicPayment].response ..0
* entry[commonPayerOrganization] ^short = "医療保険者組織または公費負担者に関する情報"
* entry[commonPayerOrganization] ^definition = "healthInsurancePublic要素またはpublicPayment要素に関係する詳細情報をOrganaizationリソースで記述する。\r\n詳細情報を必要とする場合に記述する。"
* entry[commonPayerOrganization].fullUrl 1.. MS
* entry[commonPayerOrganization].fullUrl ^short = "埋め込まれているOrganizationリソースを一意に識別するためのUUID"
* entry[commonPayerOrganization].fullUrl ^definition = "埋め込まれているOrganizationリソースを一意に識別するためのUUID。"
* entry[commonPayerOrganization].resource 1.. MS
* entry[commonPayerOrganization].resource only JP_Organization
* entry[commonPayerOrganization].resource ^short = "Organizationリソースのインスタンス本体"
* entry[commonPayerOrganization].resource ^definition = "Organizationリソースのインスタンス本体。"
* entry[commonPayerOrganization].search ..0
* entry[commonPayerOrganization].request ..0
* entry[commonPayerOrganization].response ..0
* entry[custodianOrganization] ^short = "文書の作成と管理に責任を有する組織の情報"
* entry[custodianOrganization] ^definition = "文書を作成した組織（医療機関等）の情報をOrganaizationリソースで記述する。"
* entry[custodianOrganization].fullUrl 1.. MS
* entry[custodianOrganization].fullUrl ^short = "埋め込まれているOrganizationリソースを一意に識別するためのUUID"
* entry[custodianOrganization].fullUrl ^definition = "埋め込まれているOrganizationリソースを一意に識別するためのUUID。"
* entry[custodianOrganization].resource 1.. MS
* entry[custodianOrganization].resource only JP_Organization
* entry[custodianOrganization].resource ^short = "Organizationリソースのインスタンス本体"
* entry[custodianOrganization].resource ^definition = "Organizationリソースのインスタンス本体。"
* entry[custodianOrganization].search ..0
* entry[custodianOrganization].request ..0
* entry[custodianOrganization].response ..0
* entry[custodianDepartmentOfOrganization] ^short = "文書を作成した組織（医療機関等）の部門や診療科情報"
* entry[custodianDepartmentOfOrganization] ^definition = "文書を作成した組織（医療機関等）における部門や診療科に関する情報をOrganaizationリソースで記述する。"
* entry[custodianDepartmentOfOrganization].fullUrl 1.. MS
* entry[custodianDepartmentOfOrganization].fullUrl ^short = "埋め込まれているOrganizationリソースを一意に識別するためのUUID"
* entry[custodianDepartmentOfOrganization].fullUrl ^definition = "埋め込まれているOrganizationリソースを一意に識別するためのUUID。"
* entry[custodianDepartmentOfOrganization].resource 1.. MS
* entry[custodianDepartmentOfOrganization].resource only JP_Organization
* entry[custodianDepartmentOfOrganization].resource ^short = "Organizationリソースのインスタンス本体"
* entry[custodianDepartmentOfOrganization].resource ^definition = "Organizationリソースのインスタンス本体。"
* entry[custodianDepartmentOfOrganization].search ..0
* entry[custodianDepartmentOfOrganization].request ..0
* entry[custodianDepartmentOfOrganization].response ..0
* entry[authorisedAuthorRole] ^short = "正当な権限があって文書を作成した個人の役割情報"
* entry[authorisedAuthorRole] ^definition = "正当な権限があって文書を作成した個人の役割を表すPractitionerRoleリソースで記述する。\r\nauthorisedAuthorへの参照を含む。"
* entry[authorisedAuthorRole].fullUrl 1.. MS
* entry[authorisedAuthorRole].fullUrl ^short = "埋め込まれているPractitionerRoleリソースを一意に識別するためのUUID"
* entry[authorisedAuthorRole].fullUrl ^definition = "埋め込まれているPractitionerRoleリソースを一意に識別するためのUUID。"
* entry[authorisedAuthorRole].resource 1.. MS
* entry[authorisedAuthorRole].resource only JP_PractitionerRole
* entry[authorisedAuthorRole].resource ^short = "PractitionerRoleリソースのインスタンス本体"
* entry[authorisedAuthorRole].resource ^definition = "PractitionerRoleリソースのインスタンス本体。"
* entry[authorisedAuthorRole].search ..0
* entry[authorisedAuthorRole].request ..0
* entry[authorisedAuthorRole].response ..0
* entry[authorisedAuthor] ^short = "正当な権限があって文書を作成した個人の情報"
* entry[authorisedAuthor] ^definition = "正当な権限があって文書を作成した個人を表すPractitionerリソースで記述する。\r\nauthorisedAuthorRole要素が参照するPractitionerRoleから参照される。"
* entry[authorisedAuthor].fullUrl 1.. MS
* entry[authorisedAuthor].fullUrl ^short = "埋め込まれているPractitionerリソースを一意に識別するためのUUID"
* entry[authorisedAuthor].fullUrl ^definition = "埋め込まれているPractitionerリソースを一意に識別するためのUUID。"
* entry[authorisedAuthor].resource 1.. MS
* entry[authorisedAuthor].resource only JP_Practitioner
* entry[authorisedAuthor].resource ^short = "Practitionerリソースのインスタンス本体"
* entry[authorisedAuthor].resource ^definition = "Practitionerリソースのインスタンス本体。"
* entry[authorisedAuthor].search ..0
* entry[authorisedAuthor].request ..0
* entry[authorisedAuthor].response ..0
* signature ^definition = "base64でエンコードされた電子署名。JWT仕様。"
* signature ^comment = "文書情報全体（signature要素以外の部分）に対する電子署名を送受信間で合意にもとづき運用したい場合に使用できる。各要素は参考仕様であり、今後JWT（JSON Web Token）にもとづく仕様が関係団体で策定された場合には、それに置き換える。"
