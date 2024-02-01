

// 診療情報提供書セクション区分コード
ValueSet: JP_ValueSet_eReferral_document_section
Id: jp-valueset-eReferral-document-section
Description: "診療情報提供書セクション区分　ValueSet"
* ^url = "http://jpfhir.jp/fhir/eReferral/ValueSet/document-section"
* ^title = "診療情報提供書セクション区分コード　ValueSet"
* ^status = #active
* ^experimental = false
* include codes from system http://jpfhir.jp/fhir/eReferral/CodeSystem/document-section


// FHIR文書の文書区分（医療文書全般）
ValueSet: JP_valueSet_documentTypeCode
Id: jp-valueSet-documentTypeCode
Title: "FHIR文書の文書区分（医療文書）"
Description: "FHIR文書の文書区分（医療文書全般）"
* ^url = "http://jpfhir.jp/fhir/Common/ValueSet/doc-typecodes"
* ^status = #active
* ^experimental = false
* include codes from system http://jpfhir.jp/fhir/Common/CodeSystem/doc-typecodes

