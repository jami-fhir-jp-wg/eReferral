Profile: JP_Patient_eClinicalSummary
Parent: JP_Patient
Id: JP-Patient-eClinicalSummary
Description: "対象患者のPatientプロファイル　JP_Patientの派生プロファイル"
* ^url = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Patient_eClinicalSummary"
* ^status = #active
* text.status ^definition = "テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
* text.div ^definition = "本リソースの構造化情報から生成したテキスト表現をいれてもよい。\r\nXHTML形式。\r\n例：田中一郎、男、1980/7/1生、東京都中央区日本橋１－１－１, 03_1234_5678"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* identifier.assigner.reference ^short = "患者番号を付番した医療機関情報（Organization）への参照"
* identifier.assigner.reference ^definition = "Bundleリソース内に記述される患者番号を付番した医療機関情報（Organization）のfullUrlに記述されるUUIDを設定。\r\n例：\"urn:uuid:179f9f7f_e546_04c2_6888_a9e0b24e5720\"\r\n省略されたときには、処方発行機関での患者番号とみなす。\r\n処方発行発行機関や処方医所属医療機関と異なる場合、Bundleリソース内に患者番号を付番した医療機関情報を記述したOrganizationリソースを記述し、それを参照する。"
* identifier.assigner.reference MS
* name 1.. MS
* gender 1.. MS
* birthDate 1.. MS
* address 1..1 MS
* address ^definition = "An address for the individual.\r\n患者の住所。必須。"
* address.text 1.. MS
* address.postalCode 1.. MS
* address.country 0.. MS
