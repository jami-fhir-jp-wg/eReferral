Profile: JP_Communication_eReferral
Parent: JP_Communication
Id: JP-Communication-eReferral
Description: "処方の全体での備考等情報　JP_Communicationの派生プロファイル"
* ^url = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Communication_eReferral"
* ^status = #draft
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 1
* extension contains JP_Communication_CommunicationContent named textContent 1..* MS
* extension[textContent] ^definition = "処方箋全体における調剤者へのコメントまたは患者へのコメント。\r\n複数の異なるコメントがあるときには、本要素を繰り返す。"
* extension[textContent].url 1..1 MS
* extension[textContent].valueString 1..1 MS
* status = #completed (exactly)
* status  MS
* category  0..1 MS
* category.coding 1..1 MS
* category.coding.system = "http://jpfhir.jp/fhir/eReferral/CodeSystem/communication-category" (exactly)
* category.coding.system ^definition = "処方コメントカテゴリー"
* category.coding.system 1.. MS
* category.coding.code 1.. MS
* category.coding.code ^definition = "「2:調剤者への指示」を指定することで、Communicationリソースが表現する内容が調剤者への指示であることを識別する。複数の指示を指定する場合は、Communicationリソース単位で繰り返す。\r\n「1:患者への指示」"
* category.coding.display MS
* category.coding.display ^definition = "コード２の場合、「調剤者への指示」"
