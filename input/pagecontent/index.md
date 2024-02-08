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


<a id="top"></a>

# **診療情報提供書HL7FHIR記述仕様第1版 実装ガイド **

## 実装ガイドの位置づけ
この実装ガイドは、HL7FHIR（以下、単に「FHIR」という）に準拠した診療情報提供書の記述仕様第1版の実装ガイドである。

仕様は、以下のPDF版またはHTMLページを参照のこと。

  - [診療情報提供書 HL7FHIR 記述仕様(PDF版)](https://std.jpfhir.jp/stddoc/eReferralFHIR_v1x.pdf)
  - [診療情報提供書 HL7FHIR 記述仕様(HTML版)](https://std.jpfhir.jp/stddoc/eReferralFHIR_v1x.html)


## リソース記述に関する表（診療情報提供書・退院時サマリー 共通）
**目次**<br>
[表全体](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html)<br><br>
[表1　AllergyIntoleranceリソース　アレルギー情報【6情報共通仕様】](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html#表1)<br>
[表2　Binaryリソース バイナリーデータ情報](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html#表2)<br>
[表3　Bundleリソース  文書情報](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html#表3)<br>
[表4　CarePlanリソース  診療方針指示情報](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html#表4)<br>
[表5	Compositionリソース 文書構成情報](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html#表5)<br>
[表5-1	Compositionリソース (退院時サマリー)](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html#表5-1)<br>
[表5-2	Compositionリソース (診療情報提供書)](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html#表5-2)<br>
[表5-3	Composition_sectionの情報構造](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html#表5-3)<br>
[表6	Conditionリソース　患者状態情報【6情報共通仕様】](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html#表6)<br>
[表7	Consentリソース　同意情報](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html#表7)<br>
[表8	DeviceUseStatementリソース　医療機器使用歴情報](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html#表8)<br>
[表9	Deviceリソース　医療機器情報](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html#表9)<br>
[表10	DiagnosticReportリソース　診断報告書情報](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html#表10)<br>
[表11	DocumentReferenceリソース　文書参照情報](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html#表11)<br>
[表12	Encounterリソース　外来／入院詳細情報【6情報共通仕様】](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html#表12)<br>
[表13	FamiliMemberHistoryリソース　家族歴情報](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html#表13)<br>
[表14	ImagingStudyリソース　画像検査実施情報](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html#表14)<br>
[表15	Immunizationリソース　ワクチン接種情報](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html#表15)<br>
[表16	MedicationRequestリソース　処方依頼情報【6情報共通仕様】](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html#表16)<br>
[表16-1	MedicationRequest.dosageInstruction  処方情報の用法指示情報【6情報共通仕様】](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html#表16-1)<br>
[表16-2	Extension　（InstructionForDispense） 調剤指示拡張情報【6情報共通仕様】](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html#表16-2)<br>
[表17	MedicationStatementリソース　服薬情報【廃止】](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html#表17)<br>
[表17-1	MedicationStatement.dosage　処方依頼情報の服薬用法情報](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html#表17-1)<br>
[表18	Observationリソース　検査【6情報共通仕様】・観察情報](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html#表18)<br>
[表19	Organizationリソース　文書作成医療機関情報](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html#表19)<br>
[表20	Organizationリソース　診療科情報【廃止】](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html#表20)<br>
[表21	Patientリソース　患者情報【6情報共通仕様】](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html#表21)<br>
[表22	Practitionerリソース　文書作成責任者情報/文書法的責任者情報](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html#表22)<br>
[表23	Procedureリソース　入院中治療処置情報](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html#表23)<br>
[表24	RelatedPersonリソース　患者関係者情報](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html#表24)<br>
[表25	ResearchStudyリソース　研究対象情報](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html#表25)<br>
[表26	ResearchSubjectリソース　研究対象情報](https://std.jpfhir.jp/stddoc/commonTablesFHIRv1x.html#表26)<br>

## 仕様策定
令和２年度厚生労働科学特別研究事業「診療情報提供書, 電子処方箋等の電子化医療文書の相互運用性確保のための標準規格の開発研究」研究班 (研究代表：大江和彦（東京大学）)<br>
日本医療情報学会NeXEHRS課題研究会、HL7FHIR 日本実装検討WGでの検討結果を反映している。<br>
https://std.jpfhir.jp/<br>
Authorized by （一社）日本HL7協会 for Ver.1.0<br>

*以下余白*