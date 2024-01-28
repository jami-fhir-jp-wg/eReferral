<style type="text/css">

table {
  border: solid 1px black;
  border-collapse: collapse;
}
 
table td {
  border: solid 1px black;

}

table th {
  border: solid 1px black;
}
   h1 {
      counter-reset: chapter;
    }

    h2 {
      counter-reset: sub-chapter;
    }

    h3 {
      counter-reset: section;
    }

    h4 {
      counter-reset: sub-section;
    }

    h5 {
      counter-reset: composite;
    }

    h6 {
      counter-reset: sub-composite;
    }

    h1:before {
      color: black;
      counter-increment: bchapter;
      content:  " ";
    }

    h2:before {
      color: black;
      counter-increment: chapter;
      content: counter(chapter) ". ";
    }

    h3:before {
      color: black;
      counter-increment: sub-chapter;
      content: counter(chapter) "."counter(sub-chapter) ". ";
    }


    h4:before {
      color: black;
      counter-increment: section;
      content: counter(chapter) "."counter(sub-chapter) "."counter(section) " ";
    }

    h5:before {
      color: black;
      counter-increment: sub-section;
      content: counter(chapter) "."counter(sub-chapter) "."counter(section) "."counter(sub-section) " ";
    }

    h6:before {
      color: black;
      counter-increment: sub-sub-section;
      content: "　　"counter(sub-sub-section) "）";
    }

</style>


# clinical-core
# 名称：臨床コア情報FHIR仕様 : 　JP-FHIR-CCS (Clinical Core Set)
#  （６情報を含む臨床情報のコアセット　FHIR仕様）
## このImplementationガイド(IG)の目的：
臨床情報のうち主要な情報種別について、患者や他の医療機関との診療情報の共有、退院時サマリーなど医療文書の作成、臨床研究のためのデータ利用などを想定して、主要なデータ項目をFHIRに準拠する形式で記述するとともに、そのデータをFHIRのAPIで要求側（通常ははデータを保有しないクライアント）が要求を行い、応答側（通常はデータを保有するサーバ）する（Pull方式）ためのIGである。

また、運用規定にもとづき、定められた期間における定められたデータ種別のデータを、定められたタイミングまたは自発的に、応答側が別のシステムに送信する（Push方式）ことも含める。
 
## 主要な情報種別の範囲：
* 2022年度時点で厚生労働省が提示する臨床コア6情報（いわゆる６情報）
  * [アレルギー情報　AllergyIntoleranceリソース][JP_AllergyIntolerance_eCS]
  * [薬剤禁忌情報　AllergyIntoleranceリソース][JP_DrugContraIndication_eCS]
  * [傷病名情報	Conditionリソース][JP_Condition_eCS]
  * [検査情報（救急時に有用な検査、生活習慣病関連の検査）Observationリソース][Observationリソース]
  * [感染症情報　Observationリソース][JP_Observation_LabResult_eCS]
  * [処方依頼情報　MedicationRequestリソース][JP_Observation_LabResult_InfectionRelated_eCS]

### 上記から参照される情報
　以下の情報は上記主要の6情報から、その要素情報として参照されることがある情報種別として特に定義している。またこのうち、＠印の情報については、後述するContainedリソース専用のプロファイル定義をしている。

  * [保険・公費情報 Coverageリソース][]
  * [外来受診・入院歴情報	Encounterリソース　＠
  * [医療機関情報　Organizationリソース ＠
  * [診療科情報　Organizationリソース ＠
  * [患者基本情報	Patientリソース　＠
  * [医療者情報　Practitionerリソース ＠
  * [サービス依頼（オーダ）情報　ServiceRequestリソース　＠
  * [検査検体情報	Sepecimenリソース　＠



### 診療情報提供書、退院時サマリーに含まれる上記以外の情報種別
　以下のすべてのリソースは、現時点ではFHIRの基底仕様からまだ吟味されておらず、日本国内での使用についての特別な記述がないが、必要であれば使用できる。また＊印のリソースはJP-Core　V1.1でJP-Core仕様が公表されている。
  * [バイナリーデータ情報　Binaryリソース
  * [ケア計画	CarePlanリソース
  * [同意情報　Consentリソース
  * [医療デバイス情報 Deviceリソース
  * [医療デバイス使用情報　DeviceUseStatementリソース
  * [家族歴情報	FamilyMemberHistoryリソース　＊
  * [予防接種情報　Immunizationリソース ＊
  * [処方内容情報　MedicationStatementリソース ＊
  * [手術処置情報　Procedureリソース ＊
  * [患者関係者情報　RelatedPersonリソース
  * [臨床研究対象者情報　ResearchSubjectリソース
  * [臨床研究課題情報　ResearchStudyリソース
 

## 基本方針：
1. 2023年3月時点では、各リソースの仕様はFHIR R4.0.1 および JP-Core V1.1に準拠する。
1. 対応する各リソースの要素（エレメント）仕様について、①SS-MIX2標準化ストレージの仕様の必須項目、任意項目、未使用項目を参考に、対応メッセージの必須項目のデータが原則として格納できるようにする、②同ストレージで任意となっている項目のデータが必須エレメントとならないようにする。ただし、HL7メッセージ管理目的の項目やSS-MIX2標準化ストレージ管理目的の項目、またFHIR仕様で必須となっているものなどはこの限りではない。
1. 認証の取り決めは本仕様のスコープ外とする。

## プロファイルURL等のルール
FHIRでは、Profile（プロファイル）とよばれる定義ファイルにより、それぞれのリソースごとに要素の制約は使用方法を記述する。このプロファイルを識別するURLは以下のようなルールで定めることにする。

URLベース部分　：　http://jpfhir.jp/fhir/eCS/StructureDefinition/

URL末尾パートは、
JP_\[リソースタイプ\]\(_0個以上の付加的な階層名\)_eCS

または、
JP_\[リソースタイプ\]\(_0個以上の付加的な階層名\)_eCS_プロファイル目的名
のような形式をとっている。

ここで、プロファイル目的名は、このプロファイルが、他のリソースのContained要素に格納されるリソースのプロファイルを定義している場合に、Contained を記述している。
プロファイル目的名のパートがContained となっているプロファイルは、自身のリソースでContained要素が持てないなどの制約が追加されている。



## 埋め込みリソースの取り扱い（Contained リソース）
 
メインのリソースの要素から参照される「別のリソースタイプで記述される情報」を、そのメインのリソースのcontained要素に格納することで、メインリソース単体ですべての参照される情報も包含してしまう（埋め込む）記述手法をとることができ、「「別のリソースタイプで記述される情報」をcontain する」という。「別のリソースタイプで記述される情報」は、Containedリソースとなる、といい、通常のリソース記述に比べていくつかの制限があるため、Containedリソース専用のプロファイル定義をしている場合がある。
[https://www.hl7.org/fhir/references.html](https://www.hl7.org/fhir/references.html) （2.1.3.0.10 節参照）



## 詳細仕様
### 共通仕様
　他のリソースの参照記述
リソースを参照する（Reference(JP_Patient) など）要素では、Reference.reference要素に当該施設でそのリソースのidentifierによって取得可能な
##### Patientリソース
 - AllergyIntolerance.patient 	Reference(JP Core Patient Profile) 
	.reference  当該施設の患者番号など


### FHIRリソース要求仕様
＜エクセルも参照＞


# SS-MIX2標準化ストレージ-マッピングガイドラインon 
Clinical-Core IG 
## ---- 以下は今後整備予定　----
## 目的：
SS-MIX2標準化ストレージのデータ項目を確実にClinical-Core IG の対応リソースへ対応づけて変換するためにルールを作成し、ガイドラインとして公表する。
SS-MIX2標準化ストレージからFHIRリソースデータを作成する際に、実装者はこれに準拠することを期待するものとする。

# 参考
https://build.fhir.org/ig/HL7/v2-to-fhir/mappings.html
![image](https://user-images.githubusercontent.com/57020949/207955925-7ccbeb8b-5514-456a-a757-03ff5df12aac.png)

{% include markdown-link-references.md %}