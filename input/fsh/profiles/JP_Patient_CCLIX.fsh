Profile: JP_Patient_CCLIX
Parent: JP_Patient
Id: JP-Patient-CCLIX
Description: "診療情報交換に共通の患者情報プロファイル　JP_Patientの派生プロファイル "
* ^url = "http://jpfhir.jp/fhir/CCLIX/StructureDefinition/JP_Patient_CCLIX"
* ^status = #draft
* text.id ..0
* text.status ^definition = "テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.div ^definition = "本リソースの構造化情報から生成したテキスト表現をいれてもよい。\r\nXHTML形式。\r\n例：田中一郎、男、1980/7/1生、東京都中央区日本橋１－１－１, 03_1234_5678"
* contained ..0
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension[religion] 0..0
* extension[birthPlace] 0..0
* extension[race] 0..0
* identifier.id ..0
* identifier.use ..0
* identifier.type ..0
* identifier.period ..0
* identifier.assigner.id ..0
* identifier.assigner.reference ^short = "患者番号を付番した医療機関情報（Organization）への参照"
* identifier.assigner.reference ^definition = "Bundleリソース内に記述される患者番号を付番した医療機関情報（Organization）のfullUrlに記述されるUUIDを設定。\r\n例：\"urn:uuid:179f9f7f_e546_04c2_6888_a9e0b24e5720\"\r\n省略されたときには、処方発行機関での患者番号とみなす。\r\n処方発行発行機関や処方医所属医療機関と異なる場合、Bundleリソース内に患者番号を付番した医療機関情報を記述したOrganizationリソースを記述し、それを参照する。"
* identifier.assigner.type ..0
* identifier.assigner.identifier ..0
* identifier.assigner.display ..0
* active ..0
* telecom ..0
* gender 1..
* birthDate 1..
* deceased[x] ..0
* address ..1
* address ^definition = "An address for the individual.\r\n個人の住所。\r\n麻薬処方箋として発行するデータの場合には、患者の住所は必須。それ以外の用途ではなくてもよい。"
* address.id ..0
* address.use ..0
* address.type ..0
* address.text 1..
* address.line ..0
* address.city ..0
* address.district ..0
* address.state ..0
* address.postalCode 1..
* address.country ..1
* address.period ..0
* maritalStatus ..0
* multipleBirth[x] ..0
* photo ..0
* contact.id ..0
* contact.relationship.id ..0
* contact.relationship.coding.id ..0
* contact.relationship.coding.version ..0
* contact.relationship.coding.userSelected ..0
* contact.name.id ..0
* contact.name.text 1..
* contact.name.family ..0
* contact.name.given ..0
* contact.name.prefix ..0
* contact.name.suffix ..0
* contact.name.period ..0
* contact.telecom.id ..0
* communication.id ..0
* communication.language.id ..0
* communication.language.coding ..1
* communication.language.coding.id ..0
* communication.language.coding.version ..0
* communication.language.coding.code 1..
* communication.language.coding.display ..0
* communication.language.coding.userSelected ..0
* communication.language.text ^definition = "A human language representation of the concept as seen/selected/uttered by the user who entered the data and/or which represents the intended meaning of the user.\r\nコードだけでは十分な情報が記述できいない場合に限り、追加的な情報をテキストで記述する。"
* generalPractitioner ^definition = "Patient's nominated care provider.\r\n患者が指名するケア提供者。 登録されているかかりつけ医がある場合に記述することができる。"
* generalPractitioner.id ..0
* generalPractitioner.reference ^short = "かかりつけ医の PractitionerRoleへの参照"
* generalPractitioner.type 1..
* generalPractitioner.identifier ..0
* generalPractitioner.display ..0
* managingOrganization ..0
* link ..0