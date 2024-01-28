Profile: JP_PractitionerRole_eCS_author
Parent: JP_PractitionerRole
Id: JP-PractitionerRole-eCS-author
Description: "処方を発行した医療者の資格情報　JP_PractitionerRole の派生プロファイル"
* ^url = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_PractitionerRole_eCS_author"
* ^status = #draft
* meta.lastUpdated 1.. MS

* text ^short = "本リソースをテキストで表現したものを入れてもよい。"
* text.status ^definition = "固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.div ^definition = "本リソースの構造化情報から生成したテキスト表現をいれてもよい。\\\\r\\\\nXHTML形式。"
* identifier ^definition = "Business Identifiers that are specific to a role/location.\r\n役割/場所に固有のビジネス識別子。\r\n特に必要としないかぎり、省略する。"
* identifier MS
//* identifier.system = "http://exapmleHospital.jp/IdSystem/hisUserRoleId" 
* identifier.system ^short = "役割情報の識別子"
* identifier.system ^definition = "その医療機関が医療者に付与する「処方を発行する役割」を一意に識別するための識別子を設定する。たとえば、医療機関Aに所属する医師が、医療機関Bにおいて医師として処方を発行する場合、医療機関Bが医師に付与する処方オーダ役割（権限）を識別するIDをPractitionerRoleリソースのidentifierに設定する。identifierは通常は省略しても差し支えない。"
* identifier.system MS
* identifier.value ^definition = "その医療機関が医療者に付与する「処方を発行する役割」を一意に識別するための識別子。"
* identifier.value MS
* practitioner 1.. MS
* practitioner.reference ^short = "Practitionerリソースへの参照"
* practitioner.reference ^definition = "Bundleリソースに格納される処方医のPractitionerリソースのfullUrl要素に指定されるUUIDを指定。"
* practitioner.reference MS
* organization ^short = "処方医療機関またはそのの診療科を表すOrganizationリソースへの参照"
* organization ^definition = "処方医療機関の診療科を記録する場合、診療科を表すOrganizationリソースへの参照。診療科を記録しない場合は、処方医療機関を表すOrganizationリソースへの参照。"
* organization MS
* organization.reference ^short = "OrganizationリソースのfullUrl要素に指定されるUUIDを指定。"
* organization.reference ^definition = "Bundleリソースに格納される、診療科または医療機関のOrganizationリソースのfullUrl要素に指定されるUUIDを指定。"
* organization.reference MS
* code ^definition = "医師、歯科医師、などの医療職種の役割をコードと名称で指定。"
* code MS
* code.coding 1..1 MS
* code.coding.system 1.. MS
* code.coding.system = $JP_PractitionerRole_CS (exactly)
* code.coding.system ^short = "作成医師の職種（役割）のコードシステム値"
* code.coding.system ^definition = "作成医師の職種（役割）のコードシステム値を設定。"
* code.coding.code MS
* code.coding.code ^short = "作成医師の職種（役割）コード"
* code.coding.code ^definition = "医師の場合\"JPR10000”、歯科医師の場合\"JPR10200\"。\r\n資格に相当する医籍登録番号等の情報はPractitionerリソースに記述される。"
* code.coding.code from $JP_PractitionerRole_VS (required)
