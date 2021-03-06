
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
{% include markdown-link-references.md %}


日本医療情報学会　2021年10月 Ver. 1.0.2 (2022.2.24) 
日本HL7協会　2021年10月

# **診療情報提供書HL7FHIR記述仕様 第1版**

##  本仕様書の位置づけ
この仕様書は、HL7 FHIR（以下、単に「FHIR 」という）に準拠した診療情報提供書の記述仕様を記述した文書であり、令和2年度厚生労働行政推進調査事業費補助金 令和2年度厚生労働科学特別研究事業「診療情報提供書, 診療情報提供書等の電子化医療文書の相互運用性確保のための標準規格の開発研究」 (課題番号20ⅭＡ2013）（以下、単に「R2厚生科研研究班」という）の成果物を、その作成者らが編集したものである。
以下では本仕様書という。
本仕様書は、厚生労働省標準HS008「診療情報提供書（医療機関への紹介状）（日本 HL7 協会）」（以下、「診療情報提供書CDA規約」、もしくは単に「CDA規約」という）を参考にして、 FHIRに準拠した記述仕様として作成されたものであり、電子化に伴う新たな診療情報提供書様式のあり方を再検討して作成されたものではない。
また、本仕様書の作成にあたって、ベースとした仕様には、FHIR R4に修正を加えたVer.4.0.1(Oct-30, 2019)を採用しているが、それ自体がNormative （標準）として確定した仕様となっていないものを多く含んでいる。そのため、元となるFHIR仕様が変更されることがあるが、本仕様書の明示的な改版時まではその変更の影響を受けないものとする。

##  参照する仕様等
本仕様書は、以下の仕様等を参照して作成されている。
HL7FHIR R4 Ver.4.0.1 [[http://hl7.org/fhir/index.html](http://hl7.org/fhir/index.html)]　 本仕様書ではFHIR基底仕様という。
厚生労働省標準HS008「診療情報提供書（医療機関への紹介状）」（日本 HL7 協会） [[http://www.hl7.jp/intro/std/HL7J-CDA-005.pdf](http://www.hl7.jp/intro/std/HL7J-CDA-005.pdf)]

##  文書データの表現形式
###  ファイル形式
ファイル形式は、JSON形式（JavaScript Object Notation：RFC 8259、IETF STD 90、ECMA-404 2nd edition）とする。
ファイル名を有するファイルを作成する場合には、特に送受信施設間で別の取り決めがない限り、.json の拡張子を末尾に付与するものとする。
###  文字集合
文字集合はUnicode文字セットとする。これはISO/IEC 10646：2017 （JIS　X0221国際符号化文字集合）と同一である。
###  符号化形式
文字符号化形式は、UTF-8（ISO/IEC 10646　UCS Transformation Format 8）とする。ネットワーク上で直接データを送受信することを想定し、バイト順マーク（BOM：byte order mark：UTF-8では0xEF 0xBB 0xBF ）を先頭に付与しないものとする。

##  診療情報提供書FHIR記述の全体構造
###  全体構造
FHIR では、医療情報はFHIRリソースと呼ばれる単位で記述される。診療情報提供書は文書形式のデータの一種であり、また診療情報提供書文書本体に必要なら電子署名ができ、またそれを利用して改ざん検知及び否認防止ができることが必要であると考えられる。
Bundleリソースは、複数のFHIRリソースの集合を、あるコンテクストに関する情報（この場合には、診療情報提供書の交付と取得に関する日付情報や発行者、発行機関情報など）とともにひとまとまりの情報にまとめあげたものを記述するのに使われるFHIRリソースであり、以下のような要素から構成される。あるシステムから別のシステムに診療情報提供書を送信する場合は、このBundleリソースの単位で行われる。

![](media/image1.png)
図 1 Bundleリソース（http://hl7.org/fhir/bundle.html）

そして、このBundleリソースのtype要素（上図左段の2つめの要素）の値を"document"とすることにより、Bundleリソースのひとつのタイプである、FHIR Documentを記述できる。
そこで、本仕様書では、診療情報提供書文書ひとつを、FHIRにおけるBundleリソース のひとつのタイプであるFHIR Documentにより記述することとする。[[http://hl7.org/fhir/documents.html](http://hl7.org/fhir/documents.html)]

以降の章では、診療情報提供書を構成するFHIRリソースの記述仕様を、次の項目に従って共通の表形式で記述する。

| |                  |                                                                                                                          |
|-|------------------|--------------------------------------------------------------------------------------------------------------------------|
| |項目              |説明                                                                                                                      |
|1|No                |表内で要素を識別するための番号。同一階層を同一桁数で表す。                                                                |
|2|要素　　　Lv  1～n|FHIRリソースに含まれる要素。要素の階層ごとに列を分けて記載する。                                                          |
|3|多重度            |要素の出現数の最小値と最大値を表す。最小値が0の要素は、省略することができる。最小値が1の要素は必ず出現しなければならない。|
|4|値                |固定値、あるいは、例示された値。                                                                                          |
|5|型                |要素のデータ型。                                                                                                          |
|6|説明              |要素の説明と記録条件仕様。                                                                                                |


本仕様書は、FHIR基底仕様で定義されたリソース、及び、データ型の定義に対して、診療情報提供書仕様のための制約を追加している。そのため、要素の多重度や使用可能なコード値について、FHIR基底仕様に、より強い制約が加えられていることに注意する。
また、表中では、繰り返し可能なJSON要素を、多重度 0..\* 、または、1..\* として1行で記述する方法と、繰り返しの要素ごとに展開して記述する方法の2通りの書き方を使用している。いずれの場合も、繰り返される要素は、JSONインスタンス中では [ 　] で括られた配列として表現され、要素名は1つしか出現しないことに注意する。
本仕様書で必須とした項目は、診療情報提供書の記載内容として必要となる項目であるため必ず指定すること。逆に、FHIRリソースで定義されている任意要素で、本仕様書に記載していない要素は、JSONインスタンス中に出現してはならない。
なお、本仕様書の表で出現するデータタイプのうち、基本データタイプについては、5章で説明している。

###  FHIR Document
FHIR Documentの仕様では、entry要素内（上図右段の先頭の要素）にresource要素を繰り返す基本構造をとり、最初のresource要素はComposition リソースであることと規定されている。Composition リソースとは、この文書に含まれる他のすべてのリソース（情報単位）への参照を列挙するためのもので、いわば構成リソースの一覧目次のような役割を果たす。
診療情報提供書Documentでは、Bundleリソースは次表のように25種類のエントリー要素と、それらの参照リストである先頭のCompositionリソースからなる構造である。

|                                                                                                      |                             |                |
|------------------------------------------------------------------------------------------------------|-----------------------------|----------------|
|エントリ（entry)で表現する情報                                                                        |使用されるFHIRリソース       |リソースの多重度|
|Bundleに含まれる全リソースエントリの参照リスト                                                        |Compositionリソース          |1..1            |
|患者情報エントリ                                                                                      |Patientリソース              |1..1            |
|文書作成責任者、文書法的責任者、紹介先医師、紹介元医師情報エントリ                                    |Practitionerリソース         |0..\*           |
|文書作成機関、文書管理責任機関、紹介先医療機関、紹介先診療科、紹介元医療機関、紹介元診療科情報エントリ|Organizationリソース         |0..\*           |
|紹介目的情報エントリ                                                                                  |Encounterリソース            |0..\*           |
|傷病名・主訴、現病歴、既往歴、感染症情報情報エントリ                                                  |Conditionリソース            |0..\*           |
|身体所見、社会歴・生活習慣、検査結果情報エントリ                                                      |Observationリソース          |0..\*           |
|アレルギー・不耐性反応情報エントリ                                                                    |AllergyIntoleranceリソース   |0..\*           |
|家族歴情報エントリ                                                                                    |FamilyMemberHistoryリソース  |0..\*           |
|臨床経過情報エントリ                                                                                  |ClinicalImpressionリソース   |0..\*           |
|処方指示情報エントリ                                                                                  |MedicationRequest リソース   |0..\*           |
|処方箋情報エントリ                                                                                    |Bundle(処方箋データ) リソース|0..\*           |
|現在の治療方針情報エントリ                                                                            |CarePlanリソース             |0..\*           |
|手術記録、輸血治療歴、処置治療歴情報エントリ                                                          |Procedureリソース            |0..\*           |
|画像診断報告書情報エントリ                                                                            |ImagingStudyリソース         |0..\*           |
|各種診断・検査報告書情報エントリ                                                                      |DiagnosticReportリソース     |0..\*           |
|医療機器情報エントリ                                                                                  |Deviceリソース               |0..\*           |
|医療機器使用情報エントリ                                                                              |DeviceUseStatementリソース   |0..\*           |
|予防接種情報エントリ                                                                                  |Immunizationリソース         |0..\*           |
|事前指示情報エントリ                                                                                  |Consentリソース              |0..\*           |
|親族情報エントリ                                                                                      |RelatedPersonリソース        |0..\*           |
|臨床研究情報エントリ                                                                                  |ResearchStudyリソース        |0..\*           |
|臨床研究参加情報エントリ                                                                              |ResearchSubjectリソース      |0..\*           |
|添付文書情報エントリ                                                                                  |DocumentReferenceリソース    |0..\*           |
|添付データ情報エントリ                                                                                |Binaryリソース               |0..\*           |



Bundleリソースは図のように、Compositionリソースにてセクションが複数定義され、セクションではリソースが参照される。後述するように、CDA規約のXMLファイルを参照するCDA参照セクションだけからなる使用形態と、すべての情報をFHIRリソースで記述して構造情報セクションから参照する使用形態のいずれかひとつを使用者は選択するものとする。なお、いずれの使用形態でも、PDFセクションを付与して、文書全体をPDFファイル化して受領者が容易に内容を表示できるようにすることが強く推奨される。
![](media/image2.png)


Bundleリソース全体の構造を以下の表に示す。

＜[表3　　Bundleリソース　文書情報](eReferralTables.html#tbl-03)＞

この表で示すように、documentタイプのBundleリソースでは、管理的な情報を格納する要素としてtimestamp、 signature などがあり、文書自体の内容情報を格納する要素として、ひとつのentry要素（エントリリスト）がある。このentry要素の値には、複数のresource要素を含むブロックが繰り返される。
この表では様々なentryが列挙されているが、先にも述べたように、entry要素自体は1度だけ出現し、その値がリストとなることに注意されたい。 
entryの最初のresource は、先に述べたように、構成リソース一覧目次を表すCompositionリソースである。
２つめのリソース以降に、Compositionリソースから参照される Patientリソース、などが出現する。
エントリリスト内の各FHIRリソースを記述する際には、エントリリスト内でそのリソースを一意に識別するために、resource要素と1対1で対応するfullUrl要素に、UUID（Universally Unique IDentifier）と呼ばれる、全世界で一意となるように発番された値を指定する。このUUIDは、Bundle内でリソース間の参照関係を記述する場合に使用される。具体的には、参照関係の参照元リソースに含まれる Reference型のreference要素に、参照先リソースの fullUrl要素に指定されたUUIDを指定する。
なお、FHIRのリソース参照では、リソースのid要素（論理ID）の値を含むURLを使用する方法も可能であるが、本仕様書ではUUIDを使用してリソース間の参照を記述する方法を採用するため、全てのリソースについて、リソースの論理IDは使用しない。

以下では、まずentryの値である各リソースについて詳述する。

### . Compositionリソース
Compositionリソースは、診療情報提供書FHIR documentにentry として格納される複数のリソースのうちの最初に出現するもので、この文書全体の構成目次に相当する情報や、セクションの構成を記述したものである。
診療情報提供書FHIR documentでの** **Compositionリソースの仕様を次の表に示す。
＜[表5　　Compositionリソース　文書構成情報](eReferralTables.html#tbl-05)＞

診療情報提供書は、あとで説明するように4つのセクション（CDA参照セクション、構造情報セクション、PDFセクション、添付情報セクション）から構成され、さらにそのうち構造情報セクションには子となるセクションが複数配置されている。
Compositionリソースは患者や作成者など文書情報管理用の情報を記述するいわゆるヘッダ部、および診療情報提供書文書の本体内容を記述するボディー部から構成される。
ヘッダ部はCompositionリソースの要素により記述され、ボディー部の情報は構造情報セクションの配下の複数のセクションから構成される。
なお、ヘッダ部、ボディー部という表現は、ここでCDA診療情報提供書規約（本仕様書ではCDA規約と略すこともある）との対比をわかりやすくするために便宜上用いているが、Composition リソース内で明示的に区別されるわけではない。

**文書管理情報（ヘッダ部）**


|   |                    |                          |         |                                     |                         |
|---|--------------------|--------------------------|---------|-------------------------------------|-------------------------|
|No.|情報名称            |Composition リソースの要素|必須/任意|対応するCDA診療情報提供書規約の要素名|参照先のFHIR リソース種別|
|1  |患者情報            |subject                   |必須     |患者情報                             |Patient                  |
|2  |作成・編集日時      |date                      |必須     |―                                   |―                       |
|3  |文書作成責任者      |author                    |必須     |診療情報提供書記載者                 |Practitioner             |
|4  |文書法的責任者      |attester (.mode=legal)    |         |診療情報提供書認証者                 |Practitioner             |
|5  |文書作成機関        |author                    |必須     |紹介元責任者・同組織                 |Organization             |
|6  |文書管理責任機関    |custodian                 |         |文書管理責任組織                     |Organization             |
|7  |診療情報提供書発行日|event.preiod.start        |必須     |診療情報提供書発行日                 |                         |



**診療情報提供書****本体（ボディー部）****でのセクション構成（構造情報セクションの下のセクション）**


|                |                                                  |                                                            |                                     |                                            |                                             ||
|----------------|--------------------------------------------------|------------------------------------------------------------|-------------------------------------|--------------------------------------------|---------------------------------------------||
|セクションコード|セクション名（日本語）セクション名（英語）        |必須/任意                                                   |対応するCDA診療情報提供書規約の要素名|section.entry参照先のFHIR リソース種別      |section.entryの多重度                        ||
|910             |紹介先情報セクションreferralToSection             |必須                                                        |紹介元                               |Organization　Practitioner                  |3..3                                         ||
|920             |紹介元情報セクションreferralFromSection           |必須                                                        |紹介元                               |Organization Practitioner Practitioner Role |5..6                                         ||
|200             |CDA参照セクションcdaSection                       |任意                                                        |該当なし                             |DocumentRefrence (CDA規約文書ファイルに限る)|1..1                                         ||
|300             |構造情報セクションreferralToSection               |任意                                                        |該当なし                             |−                                           |                                             ||
|                |950                                               |紹介目的セクションreferralPurposeSection                    |                                     |目的                                        |Encounter                                    ||
|                |340                                               |傷病名・主訴セクションproblemSection                        |                                     |傷病名・主訴                                |Condition                                    ||
|                |360                                               |現病歴セクションpresentIllnessSection                       |                                     |現病歴・診断・名称                          |Condition                                    ||
|                |370                                               |既往歴セクションpastIllnessSection                          |                                     |既往歴                                      |Condition                                    ||
|                |510                                               |アレルギー・不耐性反応セクションallergiesIIntoleranceSection|                                     |アレルギー                                  |AllergyIntolerance                           ||
|                |550                                               |家族歴セクションfamiliyHistorySection                       |                                     |家族歴                                      |FamilyMemberHistory                          ||
|                |610                                               |身体所見セクションphysicalStatusSection                     |                                     |身体所見                                    |Observation                                  ||
|                |520                                               |感染症情報セクションinfectionInformationSection             |                                     |感染症                                      |ConditionObservation                         ||
|                |640                                               |社会歴・生活習慣セクションsocialHistorySection              |                                     |生活習慣・リスク要因/職業歴                 |Observation                                  ||
|                |530                                               |予防接種歴セクションimmunizationSection                     |                                     |予防接種                                    |Immunization                                 ||
|                |730                                               |手術セクションsurgicalProcedureSection                      |                                     |手術                                        |Procedure                                    ||
|                |740                                               |輸血歴セクションbloodInfustionHistorySection                |                                     |輸血記録                                    |Procedure                                    ||
|                |720                                               |処置セクションprocedureSection                              |                                     |処置                                        |Procedure                                    ||
|                |430                                               |投薬指示セクションmedicationSection                         |                                     |現在の処方・現投薬情報                      |MedicationRequest ｜Bundle(電子処方箋)       ||
|                |620                                               |検査結果セクションstudySection                              |                                     |検査結果                                    |Observation \| ImagingStudy \| DiagnosticReport||
|                |330                                               |臨床経過セクションclinicalCourseSection                     |                                     |−                                           |ClinicalImpression                           ||
|                |420                                               |診療方針指示セクションclinicalInstructionSection            |                                     |−                                           |CarePlan                                     ||
|                |810                                               |医療機器セクションmedicalDeviceSection                      |                                     |−                                           |DeviceUseStatement                           ||
|                |410                                               |事前指示セクションadvanceDirectiveSection                   |                                     |−                                           |Consent                                      ||
|                |830                                               |臨床研究参加セクションresearchParticipationSection          |                                     |−                                           |ResearchSubject                              ||
|210             |添付情報セクションattachmentSection               |任意                                                        |添付書類                             |DocumentReference \| Binary                  |0..\*                                        ||
|220             |備考・連絡情報セクションremarksCommunicatonSection|任意                                                        |備考・連絡事項                       |Binary                                      |0..\*                                        ||


Composition.identifier要素には、その医療機関が発行した診療情報提供書をその医療機関内において一意に識別するID（診療情報提供書番号）を設定する。
施設固有のID設定方式を用いて構わないが、Identifier型のvalue要素に、保険医療機関番号（10桁）、発行年（4桁）、施設内において発行年内で一意となる番号（8桁）をハイフン(“-“：U+002D)で連結した文字列を指定する方法を本仕様では具体的として採用している。
例：”1311234567-2020-00123456”
この場合には、Identifier型のsystem要素には、” http://jpfhir.jp/fhir/Common/CodeSystem/resourceInstance-identifier”を指定する。

###  Compositionリソースから各リソースへの参照
以下では、内部の各FHIRリソースインスタンスを参照するCompositionの要素について概説する。
####  Composition.subject要素
この診療情報提供書を作成する対象となる患者をPatientリソースを、そのPatientリソースのリソースIDである"urn:uuid: ..... "　を記述することにより内部参照する。
Patientリソースの仕様は次の表で示す。

＜[表21　　Patientリソース　患者情報](eReferralTables.html#tbl-21)＞

####  Composition.encounter要素
この診療情報提供書を作成する元となった当該医療機関での受診情報を表すEncounterリソースを、そのEncounterリソースのリソースIDである"urn:uuid: ..... "　を記述することにより内部参照する。
Encounterリソースの仕様は次の表で示す。

＜[表12　　Encounterリソース　入院詳細情報](eReferralTables.html#tbl-12)＞

####  Composition.author要素
この診療情報提供書文書の作成責任者を表すPractionerリソースを、そのPractionerリソースのリソースIDである"urn:uuid: ..... "　を記述することにより内部参照する。
さらに同じ要素に、続けて文書作成機関を表すOrganizationリソースを、そのOrganizationリソースのリソースIDである"urn:uuid: ..... "　を記述することにより内部参照する。
Practionerリソース、Organizationリソースの仕様はそれぞれ次の表で示す。

＜[表22　　Practitionerリソース　　文書作成責任者情報/文書法的責任者情報](eReferralTables.html#tbl-22)＞
＜[表19　　Organizationリソース　文書作成医療機関情報][eReferralTables.html#tbl-19]＞
＜[表20　　Organizationリソース　診療科情報](eReferralTables.html#tbl-20)＞

####  Composition.custodian要素
この診療情報提供書文書の作成・修正を行い、文書の管理責任を持つ機関を表す。
Organizationリソースを、そのOrganizationリソースのリソースIDである"urn:uuid: ..... "　を記述することにより内部参照する。

####  Composition.event要素
この診療情報提供書文書の発行イベントが発生した日時を記述するため本要素を記述する。具体的には、Composition.event.preiod.start 要素に"yyyy-mm-dd"の形式で診療情報提供書文書の発行日付を格納する。

####  Composition.section要素
すべてのComposition.section要素は、以下の構造をとる。

＜[表5-3 Composition_sectionの情報構造](eReferralTables.html#tbl-05-3)＞

Compositionの直下には、紹介先医療機関と紹介元医療機関の情報を保持する2つのセクションと、診療情報提供書文書の内容を異なる2つの形態のいずれかで格納するためにどちらか一方を選択して使用するCDA参照セクションと構造情報セクション、およびどの形態においても使うことのある添付情報セクション、PDFセクションの計6つのsectionが子要素として存在している。
これらのうちCDA参照セクションは既存のCDA規約にもとづいてすでに十分に構造化されたXMLファイルを有していて、それをそのまま包み込むことによって、FHIRドキュメント作成になるべくコストを割きたくない場合を想定して、それぞれ用意されている。
以下では、各セクションの使い方について説明する。

#####  ***紹介先・元情報のためのセクション***
1) 紹介先情報セクション
　紹介先医療機関はOrganizationリソースで記述し、そのインスタンスへの参照を本セクションのentry要素リストに記述する。
　紹介先の診療科を記述したい場合には、加えて診療科をOrganizationリソースで記述し、そのインスタンスへの参照を本セクションのentry要素リストに記述する。
　それぞれの仕様を次の表に示す。文書作成に関わる情報となっているが共通仕様であり、必須要素以外の記述は不要である。

＜[表19　　Organizationリソース　文書作成医療機関情報](eReferralTables.html#tbl-19)＞
＜[表20　　Organizationリソース　診療科情報](eReferralTables.html#tbl-20)＞

　また、紹介先の医師の情報も記述したい場合には、加えて医師情報をPractitionerリソースで記述し、そのインスタンスへの参照を本セクションのentry要素リストに記述する。
　Practitionerリソースの仕様を次の表に示す。作成者情報となっているが共通仕様である。

＜[表22　　Practitionerリソース　　文書作成責任者情報/文書法的責任者情報](eReferralTables.html#tbl-22)＞（再掲）
　
2）紹介元情報セクション
　紹介元医療機関、紹介元診療科、紹介元医師の情報記述は紹介先情報と同一仕様である。

#####  ***診療情報提供書******が******CDA******規約ファイルとして作成済みの場合の記述***
既存のCDA規約で作成されたXMLファイルをそのまま参照したい場合には、「CDA参照セクション」を使用する。
他の場所に保存されているFHIRドキュメントを参照する場合にもこの要素を用いる。
この要素が出現した場合、必要があって「添付情報セクション」を作成する場合と、本文書データをPDFファイルでも送付する場合に「PDFセクション」を作成する場合を除き、他のすべてのセクションを出現させないものとする。
本文書データを受領して利用する側は、「CDA参照セクション」が存在し、情報が格納または参照されている場合には、「CDA参照セクション」の情報、存在する場合には「添付情報セクション」との2つのセクションの情報を、完結した本文書データとして利用しなければならない。「PDFセクション」が存在する場合にはその情報を表示用や印刷用に使用することができる。もし他に「構造情報セクション」の情報が存在したとしても、無視する必要がある。
なお、文書管理情報（ヘッダ部）の情報は、この仕様にもとづいて作成し、Compositionリソースの要素に格納しなければならない。

#####  ***診療情報提供書情報をセクションに構造化できる場合の記述***
診療情報提供書の情報がある程度構造化できる構成で管理されており、新たに本使用にもとづいて作成する場合には、「構造情報セクション」を使用する。
「構造情報セクション」は、**診療情報提供書本体（ボディー部）でのセクション構成**のように複数の子セクションから構成されている。
これらの子セクションのうち、必須のセクションはは必ずComposition.section要素が出現しなければならないが、実際に格納すべき情報が存在しない場合（例えば、退院時投薬がない場合など）では、**Composition.section. emptyReason****要素内に****"unavailable"****を意味するコード情報を格納することとする**。これにより、情報がないことが明示的に示される。

各セクションには、以降で説明するFHIRリソースへの参照が1個以上格納されるが、これらの構造的記述では十分に表現できない情報があって、そのセクション全体の情報を叙述的（もしくはプレーンテキストやHTML）に記述した情報を格納するには、**Composition.section.section.text** 要素に簡略xhtml形式（1MB以内のサイズ）で記述できる。
従って、診療情報提供書情報を、以降で説明する各セクションに構造化することはできるものの、FHIRリソースで構造的に記述することができない場合には、そのセクションの情報は、そのセクションの**Composition.section.section.text** 要素に記述し、Composition.section. emptyReason要素内に"unavailable"を意味するコード情報を格納することとする。これにより、FHIRリソースに対応した構造化情報がないことが明示的に示され、利用側は、そのセクションについては**Composition.section.section.text** 要素の叙述的記述（もしくはプレーンテキストやHTML）を利用する。

###  紹介目的セクション
紹介先で予定している受診を記述したEncounterリソースを参照する。

＜[表12　　Encounterリソース　入院詳細情報](eReferralTables.html#tbl-12)＞　（再掲）

Encounter.reasonCodeに紹介する理由を記述するが、疾患や症状にもとづく診療紹介の場合には、その症状や疾患のコードあるいはテキストを記述する。そうでない場合には、コード化にかかわらずEncounter.reasonCode.textに紹介理由もtext形式で記述する。

###  傷病名・主訴セクション
傷病名・主訴は、それらを1つにつき1つのConditionで記述したインスタンスを、本セクションのentryから参照する。
Conditionリソースの仕様は次の表である。

＜[表6　　Conditionリソース　患者状態情報](eReferralTables.html#tbl-06)＞

### . 現病歴セクション
傷病名・主訴セクションと同様である。

###  既往歴セクション
傷病名・主訴セクションと同様である。

###  アレルギー・不耐性反応セクション
アレルギー・不耐性反応情報を記述したAllergyIntoleranceリソースで記述される。
アレルゲンコードは、R2厚生科研研究班と日本医療情報学会NeXEHRS研究会HL7FHIR日本実装検討WG関係者とで共同策定した「JPFHIRアレルゲンコード表」を使用する。
このコード表は、約910の医薬品以外のアレルゲンにコードをアサインして策定したJFAGYコードと、医薬品（YJコードまたはWHO-ATCコードまたは厚労省一般医薬品コード）のいずれかのコードを使用できる新たなコード体系JPFHIRアレルゲンコード表である。

＜表1　　AllergyIntoleranceリソース　アレルギー情報＞

###  家族歴セクション
家族歴情報は、家族一人について1つのFamilyMemberHistoryリソースを使用して記述する。仕様は次の表である。

＜[表13　　FamiliMemberHistoryリソース　家族歴情報](eReferralTables.html#tbl-13)＞

###  身体所見セクション
身体所見は観察や検査所見の一種として、1項目ごとに1つのObservationリソースを使用して記述する。Observationのcategory要素に"exam"を設定する。項目コードObservation .code.coding.codeに設定すべき適切な標準コードがない項目の場合には、Observation .code.text にテキストで項目名だけを記述することもできる。
仕様は次の表である。

＜[表18　　Observationリソース　　検査・観察情報](eReferralTables.html#tbl-16)＞　

###  感染症情報セクション
感染症に関する患者状態は、検査結果による情報と、疾患名による情報があるので、適宜、検査所見の一種として、1項目ごとに1つのObservationリソースを使用するか、傷病名・主訴セクションと同様に1疾患ごとに1つのConditionリソースを使用するか、またはその両方を使用して記述する。

＜[表18　　Observationリソース　　検査・観察情報](eReferralTables.html#tbl-18)＞　（再掲）

###  入院時服薬情報セクション
入院時の服薬情報（正確には入院直前までの服薬情報）は、1医薬品ごとに1つのMedicationStatementリソースを使用して記述する。MedicationStatementでは、1医薬品ごとに用法を記述することができ、それが必要な場合で情報が入手できる場合には、MedicationStatement.dosage要素に記述する。
仕様は次の表である。

＜[表17　　MedicationStatementリソース　　服薬情報](eReferralTables.html#tbl-17)＞
＜[表17-1 MedicationStatement* *dosage　処方依頼情報の服薬用法情報](eReferralTables.html#tbl-17-1)＞

###  社会歴・生活習慣セクション
社会（生活）歴情報は観察調査の一種として、1項目ごとに1つのObservationリソースを使用して記述する。Observationのcategory要素に"social-history"を設定する。項目コードObservation .code.coding.codeに設定すべき適切な標準コードがない項目の場合には、Observation .code.text にテキストで項目名だけを記述することもできる。仕様は次の表である。

＜[表18　　Observationリソース　　検査・観察情報](eReferralTables.html#tbl-18)＞（再掲）

###  予防接種歴セクション
予防接種の履歴は、入院にかかわらずImmunaizaionリソースを使用して記述する。仕様を次の表に示す。

＜[表15　　Immunizationリソース　ワクチン接種情報](eReferralTables.html#tbl-15)＞

###  手術セクション
### . 輸血歴セクション
###  処置セクション
治療・処置・手術等（投薬を除く）は、すべてProcedureリソースを使用して記述する。
なお、診断のための検査手技の実施については、検査結果のセクションで記述する。
note要素に叙述的記述はできるが、3.7で説明したようにentry.textに記述してもよい。
＜[表23　　Procedureリソース　　入院中治療処置情報](eReferralTables.html#tbl-23)＞

###  投薬指示セクション
処方指示は、1医薬品ごとに1つのMedicationReauestリソースを使用して記述する。MedicationReauestでは、1医薬品ごとに用法を記述しており、MedicationRequest.dosaggInstruction要素に記述する。
仕様は次の表である。

＜[表16　　MedicationRequestリソース　処方依頼情報](eReferralTables.html#tbl-16)＞
＜[表16-1 MedicationRequest dosageInstruction　処方情報の用法指示情報](eReferralTables.html#tbl-16-1)＞

記述方法の詳細は、処方箋データFHIR記述仕様を参照のこと。
なお、処方箋データFHIR記述仕様にもとづいた処方箋文書（Bundleリソースインスタンス）を直接参照する方法でも記述できる。
その場合、entryでの参照はそのひとつのBundleリソースインスタンスだけとなる。

###  検査結果セクション
実施済みの検査結果は、検査室の検査や観察などはObservationリソースで、画像検査はその実施記録をImagingStudy、診断報告をDiagnosticReportで、それぞれ記述する。画像そのものはDICOMファイル、波形・写真・図などはそれぞれのファイル形式で添付情報セクションに添付または外部ファイル参照する。
仕様はそれぞれ次の表に示す。

＜[表18　　Observationリソース　　検査・観察情報](eReferralTables.html#tbl-18)＞　（再掲）
＜[表14　　ImagingStudyリソース　画像検査実施情報](eReferralTables.html#tbl-14)＞
＜[表10　　DiagnosticReportリソース　診断報告書情報](eReferralTables.html#tbl-10)＞

###  臨床経過セクション
紹介元でのこれまでの臨床経過は、ほとんどの場合、叙述的に記述することが必要である。経過中の主訴、診断や検査、投薬、治療などは他のセクションにおいて、Observation、ImagingStudy、DiagnositcReport 、Procedure、MedicationRequest、MedicationStatement、Encounter　などの各リソースで記述される。
それ以外の経過は、主としてこれらのリソースで記述された客観的情報の時間的接続性に関する叙述的な記述や、患者のSubjectiveな記述、および医療者による評価所見（アセスメント的な印象）といった情報となる。本仕様ではDocumentReferenceリソースを使用し、DocumentReference.type にLOINCコード"11506-3"　（Progress note）を設定し、叙述的内容をDocumentReference.description要素に文章をstring型で記述する。仕様は次の表に示す。

＜[表11  DocumentReferenceリソース　 文書参照情報](eReferralTables.html#tbl-11)＞

###  診療方針指示セクション
今後の治療の方針や患者や家族への指示は、ほとんどの場合に叙述的記述にとどまると考えられるが、この内容はFHIRでは、CarePlanリソースを使用して記述する。方針指示内容はCarePlanのdescription 要素に叙述的に記述する。
診療情報提供書において方針指示に関する情報を提供するのは、あくまで、患者にはこれまで紹介元医療機関としてどのように指示していたかを伝える目的であり、紹介先医療機関に指示する目的ではない。仕様は次の表である。

＜[表4　　CarePlanリソース　診療方針指示情報](eReferralTables.html#tbl-04)＞

###  医療機器セクション
患者が使用、装着、離脱した医療機器に関する情報を記述したい場合には、DeviceUseStatementリソースを使用して記述する。このリソースからは使用するデバイスを参照するので、あわせてDeviceリソースも記述して格納する。仕様をそれぞれ次の表に示す。

＜[表8　　DeviceUseStatementリソース　医療機器使用歴情報](eReferralTables.html#tbl-08)＞
＜[表9　　Deviceリソース　医療機器情報](eReferralTables.html#tbl-09)＞

###  事前指示セクション
患者や家族の治療意思と治療方針への同意情報は、事前指示に限らず同意情報としてConsentリソースを使用して記述する。
Consent.scope 要素に"adr"　を設定（Advanced Care Directive）すると、事前指示として記述できる。仕様を次の表に示す。

＜[表7　　Consentリソース　同意情報](eReferralTables.html#tbl-07)＞

###  臨床研究参加セクション
患者が臨床研究に参加している、あるいは参加予定である場合など、研究参加情報は、ResearchSubjectリソースを使用して記述する。ResearchSubjectリソースは対象となるResearchStudyリソースを参照するので、あわせてResearchStudyリソースも記述して格納する。仕様を次の表に示す。

＜[表26　　ResearchSubjectリソース　　研究対象情報](eReferralTables.html#tbl-26)＞
＜[表25　　ResearchStudyリソース　　研究対象情報](eReferralTables.html#tbl-25)＞
＜[表7　　Consentリソース　同意情報](eReferralTables.html#tbl-07)＞　（再掲）

###  添付情報セクション
添付情報は、DocumentReferenceリソース、またはBinaryリソースにより記述して格納する。
埋め込みデータとして本仕様にもとづいて記述されたBundleリソースのインスタンスデータの中に埋めこんでもよいが、画像や写真など独立したファイルになっている場合には、外部参照ファイルとして参照するようにurlだけを設定するほうがよい。
また複数の外部ファイルがある場合には、たとえば厚生労働省標準HS009のIHE 統合プロファイル「可搬型医用画像」で規定しているIHE:PDI方式に準拠したフォルダ構成で各ファイルを格納した上でZIP形式などでアーカイブ してひとつのファイルとして、それを外部参照するとよい。
DocumentReferenceリソース、およびBinaryリソースの仕様は次の表にそれぞれ示す。

＜[表11  DocumentReferenceリソース　 文書参照情報](eReferralTables.html#tbl-11)＞
＜[表2　　Binaryリソース　 バイナリーデータ情報](eReferralTables.html#tbl-02)＞

### . セクションから直接参照されないリソース
各セクションのentry要素から直接参照されるリソースは、さらに別のリソースを参照する。ここではそれら、間接的参照のリソースのうち主要はリソースの仕様を記述する。、
なお、間接的参照のリソースであっても、本仕様書の主題である診療情報提供書文書としてはそれを使用して情報を記述する必要性がないか低いと判断されたものは、本仕様書では取り上げない。
必要な場合には、FHIRのホームページで公開されているリソースのプロファイル記述などを参照されたい。

###  　Organizationリソース
診療情報提供書を作成する医療機関、その他の関連する医療機関、医療機器の製造会社、入院前の在所施設、退院先の施設、研究責任機関、文書作成の責任機関、などさまざまな機関情報が参照される。これらはすべてOrganizationリソースを使用して記述する。
また、機関のなかの部門についても、機関の中の機関と見做すことで同じOrganizationリソースを使用して記述できる。たとえば診療科の記述はOrganizationリソースを使用して記述する。
仕様は次の表に示す。この仕様では文書作成医療機関を想定して表が作成されているが、これに限らず他の施設、機関にも適用できる。

＜[表19　　Organizationリソース　文書作成医療機関情報](eReferralTables.html#tbl-19)＞（再掲）
＜[表20　　Organizationリソース　診療科情報](eReferralTables.html#tbl-20)＞（再掲）

###  　RelatedPersonリソース
患者の関係者（親族や同居者、あるいは友人なども含む）のリソースとしてRelatedPersonリソースが参照される。
たとえば同意取得や第三者確認などで使用されることがある。仕様を次の表に示す。

＜[表24　　RelatedPersonリソース　　患者関係者情報](eReferralTables.html#tbl-24)＞


##  データタイプ
データタイプはFHIR基底仕様に定義されているが、便宜のため、以下に日本語訳を示す。
基本データ型（Primitive Types）
HL7FHIRで使用される基本データタイプ（Primitive Types）  について、本仕様書で出現しなかったものも含めて説明する。本記述は、http://hl7.org/fhir/datatypes.html　のPrimitive Types の記述を参考にして意訳している。

|            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
|------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|基本データ型|説明・とりうる値                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
|boolean     |真偽値型　true \| false正規表現： true\|false                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
|integer     |整数型　マイナス2,147,483,648からプラス2,147,483,647の範囲の符号付き整数（32ビットで表現可能な整数。値が⼤きい場合はdecimalタイプを使⽤すること）正規表現： [0]\|[-+]?[1-9][0-9]\*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
|string      |文字列型　Unicode⽂字のシーケンス⽂字列のサイズは1MB（1024   1バイト文字で  1024⽂字、UTF8文字の場合1文字あたり3バイトとあるので注意）を超えてはならないことに注意。⽂字列には、u0009（⽔平タブ）、u0010（キャリッジリターン）、およびu0013（ラインフィード）を除く制御文字（文字コード10進で32未満）を含んではならない。先頭と末尾の空⽩は許可されますが、XML形式を使⽤する場合は削除する必要がある。注：これは、空⽩のみで構成する値はから文字列値として扱われる。したがって、⽂字列には常に空⽩以外のコンテンツを含める必要がある。正規表現：[ \\r\\n\\t\\S]+                                                                                                                                                                                                                                                                                                                         |
|decimal     |10進数型　⼩数表現の有理数。正規表現：-?(0\|[1-9][0-9]\*)(\\.[0-9]+)?([eE][+-]?[0-9]+)?                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
|uri         |uri型   Uniform Resource Identifier (RFC 3986 )　 URIでは⼤⽂字と⼩⽂字が区別される。UUID（例：urn:uuid:53fefa32-fcbb-4ff8-8a92-55ee120877b7）ではすべて小文字を使う。URIは、絶対的または相対的であることができ、任意追加のフラグメント識別子を有していてもよい。                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
|url         |url型   Uniform Resource Locator (RFC 1738 )　 URLは、指定されたプロトコルを使用して直接アクセスされる。一般的なURLプロトコルはhttp {s} ：、 ftp：、mailto：、mllp：だが、他にも多くのプロトコルが定義されている。                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
|canonical   |正規URI型　リソース（urlプロパティを持つリソース）を正規URLによって参照するURI。canonical型は、この仕様で特別な意味を持ち、縦棒（\|）で区切られたバージョンが追加される可能性があるという点でURIとは異なります。タイプcanonicalは、これらの参照のターゲットである実際の正規URLではなく、それらを参照するURIに使用され、バージョンサフィックスが含まれている場合があることに注意してください。他のURIと同様に、canonical型の要素にも#fragment参照が含まれる場合があります                                                                                                                                                                                                                                                                                                                                                                                                                  |
|base64Binary|base64型   base64でエントードされたバイト文字列（A stream of bytes, base64 encoded）（RFC4648）正規表現：(\\s\*([0-9a-zA-Z\\+\\=]){4}\\s\*)+バイナリのサイズに指定された上限はないが、システムは、サポートするサイズに実装ベースの制限を課す必要がある。現時点ではこれについて計算できるものはないが、これは明確に文書化する必要がある。                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
|instant     |瞬間時点型　YYYY-MM-DDThh：mm：ss.sss + zz：zzの形式の瞬間時点（例：2015-02-07T13：28：17.239 + 02：00または2017-01-01T00：00：00Z）。時刻は少なくとも1秒までは指定する必要があり、タイムゾーンを含める必要がある。注：これを使用するのは、正確に監視された時間が必要な場合（通常はシステムログなど）を対象としており、人間が報告した時間には使用しない。人間が報告する時刻には、dateまたはdateTime（インスタントと同じくらい正確にすることができるが、それほどの精度確保は必須ではない）を使用する。インスタントはより制約されたdateTimeである。注：このタイプはシステム時間用であり、人間のコミュニケーションで使用される日時ではありません（以下の日付とdateTimeを参照）正規表現：([0-9]([0-9]([0-9][1-9]\|[1-9]0)\|[1-9]00)\|[1-9]000)-(0[1-9]\|1[0-2])-(0[1-9]\|[1-2][0-9]\|3[0-1])T([01][0-9]\|2[0-3]):[0-5][0-9]:([0-5][0-9]\|60)(\\.[0-9]+)?(Z\|(\\+\|-)((0[0-9]\|1[0-3]):[0-5][0-9]\|14:00))|
|date        |日付型　人間のコミュニケーションで使用される日付、または部分的な日付（たとえば、年または年+月）。形式はYYYY、YYYY-MM、またはYYYY-MM-DDです。例： 2018、1973-06、または1905-08-23。**タイムゾーンはない。日付は有効な日付である必要がある。**正規表現：([0-9]([0-9]([0-9][1-9]\|[1-9]0)\|[1-9]00)\|[1-9]000)(-(0[1-9]\|1[0-2])(-(0[1-9]\|[1-2][0-9]\|3[0-1]))?)?                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
|dateTime    |日時型　人間のコミュニケーションで使用される日付、日時、または部分的な日付（例：年または年+月）。形式は、YYYY、YYYY-MM、YYYY-MM-DD、またはYYYY-MM-DDThh：mm：ss + zz：zz。例： 2018、1973-06、1905-08-23、2015-02-07T13：28：17-05：00または2017-01-01T00：00：00.000Z。時刻と分が指定されている場合、タイムゾーンを設定する必要がある。スキーマタイプの制約のために秒を指定する必要があるが、ゼロで埋められ、受信者の裁量で00の秒は無視される場合がある。**日付は有効な日付である必要がある**。**時刻「****24:00」は許可されていません。**うるう秒が許可される。正規表現：([0-9]([0-9]([0-9][1-9]\|[1-9]0)\|[1-9]00)\|[1-9]000)(-(0[1-9]\|1[0-2])(-(0[1-9]\|[1-2][0-9]\|3[0-1])(T([01][0-9]\|2[0-3]):[0-5][0-9]:([0-5][0-9]\|60)(\\.[0-9]+)?(Z\|(\\+\|-)((0[0-9]\|1[0-3]):[0-5][0-9]\|14:00)))?)?)?                                                                                                 |
|time        |時刻型　hh:mm:ssの形式の日中の時間。日付は指定されていない。スキーマタイプの制約のために秒を指定する必要がありますが、ゼロで埋められ、受信者の裁量で00秒は無視される場合があります。**時刻「****24:00」は使用しないでください。タイムゾーンは存在してはならない**。この時刻値は午前0時からの経過時間（Duration型）に変換可能。正規表現：([01][0-9]\|2[0-3]):[0-5][0-9]:([0-5][0-9]\|60)(\\.[0-9]+)?                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
|code        |コード値型　値が他の場所で定義されたコトトロールされた（自由な文字列にはなれない）文字列のセットからひとつ取得されることを示す（詳細については、コードの使用を参照のこと）。技術的には、コードは、少なくとも1文字で、先頭または末尾の空白がなく、文字列内に単一のスペース以外の空白（連続した空白やタブなど）がない文字列に制限されます。正規表現：[^\\s]+(\\s[^\\s]+)\*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
|oid         |OID型　URIにより表現されたOID（Object IDentifier）例：urn:oid:1.2.3.4.5                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
|id          |識別ID型　大文字または小文字のASCII文字（「A」..「Z」および「a」..「z」、数字（「0」..「9」）、「-」および「.」の64文字の長さ以内の任意の組み合わせ。（これは、整数、接頭辞なしのOID、UUID、またはこれらの制約を満たすその他の識別子パターンである可能性もある）。正規表現：[A-Za-z0-9\\-\\.]{1,64}                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
|markdown    |マークダウン型　マークダウンプレゼンテーションエンジンによるオプションの処理のためのマークダウン構文を含む可能性のあるFHIR文字列型（string型を参照）。正規表現：\\s\*(\\S\|\\s)\*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
|unsignedInt |符号なし整数型　0または正の整数で0から2,147,483,647の範囲正規表現：[0]\|([1-9][0-9]\*)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|positiveInt |正整数型　　1以上の整数で1から2,147,483,647の範囲正規表現：+?[1-9][0-9]\*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
|uuid        |uuid型　URIで表現されたUUID例：urn:uuid:c757873d-ec9a-4326-a141-556f43239520                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |

  
  
##  名前空間と識別ＩＤ
本仕様書で定義された、名前空間識別子の一覧を＜表_名前空間識別子＞に示す
この表のうち、以下の系については、次のそれぞれの資料も参照すること。
urn:oid:1.2.392.100495.20.x ： 厚生労働省退院時サマリー CDA 記述仕様第１版（6 付録２ OID 一覧）（[https://www.mhlw.go.jp/content/10800000/000342368.pdf ](https://www.mhlw.go.jp/content/10800000/000342368.pdf)）に収載されているOID
urn:oid:1.2.392.200250.2.x ： （一社）日本医療情報学会管理のOID表（ 日本医療情報学会　「医療情報の標準化に関する情報・資料など」[http://jami.jp/jamistd/](http://jami.jp/jamistd/)　より　「JAMIが管理するOID表」　）
urn:oid:1.2.392.200119.4.x : （一財）[医療情報システム開発センター](https://www.medis.or.jp/)が管理するOID表

##  仕様策定メンバー
・令和２年度厚生労働科学特別研究事業[「診療情報提供書, 退院時サマリー等の電子化医療文書の相互運用性確保のための標準規格の開発研究」研究班](https://std.jpfhir.jp/)（研究代表者：大江和彦（東京大学））
・河添悦昌、星本弘之、永島里美（JPFHIRアレルゲンコード表とJFAGYアレルギーコードの策定）

##  謝辞
本仕様書の作成にあたっては、日本HL7協会、[日本医療情報学会NeXEHRS研究会HL7FHIR日本実装検討WG](https://jpfhir.jp/)メンバー関係者、とりわけ以下のサブワーキンググループのリーダ、サブリーダの方々の検討内容、および以下の木村論文の内容を検討の参考にした。ここに謝辞を表する。
・SWG1：㈱ファインデックス　宮川力、㈱ケーアイエス　小西由貴範、東京大学　三谷知広、SWG2：キヤノンメディカルシステムズ㈱　塩川康成、㈱ケーアイエス　田中教子、平山照幸、SWG3：日本HL7協会　檀原一之、東京大学　土井俊祐、インターシステムズジャパン㈱　上中進太郎、SWG4：東京大学　河添悦昌、山口大学　石田博、SWG5：国立保健医療科学院　小林慎治、日本アイ・ビー・エム㈱　木村雅彦、SWG6：東京大学　今井健、国立病院機構　堀口裕正、SWG-SSMIX：㈱SBS情報システム　中根賢、㈱NTTデータ東海　沼野 武志
・木村英善、他：退院時サマリーCDA文書のFHIRへの移植の評価, 医療情報学、39(3), 143-153, 2019.

　


退院時サマリーHL7FHIR記述仕様　第1版
診療情報提供書HL7FHIR記述仕様　第1版
（共通）
# 名前空間識別子の一覧表


日本HL7協会
