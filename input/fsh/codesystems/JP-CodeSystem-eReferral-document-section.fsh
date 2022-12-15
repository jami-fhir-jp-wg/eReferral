// 診療情報提供書セクション区分コード
CodeSystem: JP_codeSystem_eReferral_document_section
Id: jp-codeSystem-eReferral-document-section
Description: "処方セクション区分コード"
* ^url = "http://jpfhir.jp/fhir/eReferral/CodeSystem/document-section"
* ^title = "処方セクション区分コード"
* ^status = #active
* ^experimental = false
* ^content = #complete
* ^caseSensitive = false
* #200	"CDA参照セクション" //  cdaSection
* #210	"添付情報セクション"    //  attachmentSection
* #220	"備考・連絡情報セクション"  //  remarksCommunicatonSection
* #300	"構造情報セクション"    //  compositionSection
* #330	"臨床経過セクション"    // clinicalCourseSection
* #340	"傷病名・主訴セクション"    //  problemSection
* #360	"現病歴セクション"  //  presentIllnessSection
* #370	"既往歴セクション"  //  pastIllnessSection
* #410	"事前指示セクション"    //  advanceDirectiveSection
* #420	"診療方針指示セクション"    //  clinicalInstructionSection
* #430	"投薬指示セクション"    //  medicationSection
* #510	"アレルギー・不耐性反応セクション"  //  allergiesIIntoleranceSection
* #520	"感染症情報セクション"  //  infectionInformationSection
* #530	"予防接種歴セクション"  //  immunizationSection
* #550	"家族歴セクション"     //   familiyHistorySection
* #610	"身体所見セクション"    //  physicalStatusSection
* #620	"検査結果セクション"    //  studySection
* #640	"社会歴・生活習慣セクション"    //  socialHistorySection
* #720	"処置セクション"    //  procedureSection
* #730	"手術セクション"    //  surgicalProcedureSection
* #740	"輸血歴セクション"  //  bloodInfustionHistorySection
* #810	"医療機器セクション"    //  medicalDeviceSection
* #830	"臨床研究参加セクション"    //  researchParticipationSection
* #910	"紹介先情報セクション"  //  referralToSection
* #920	"紹介元情報セクション"  //  referralFromSection
* #950	"紹介目的セクション"    //  referralPurposeSection
