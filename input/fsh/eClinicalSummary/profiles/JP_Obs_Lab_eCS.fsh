// ==================================================
//   Profile 定義 診療６情報・サマリー用
//   検体検査結果／感染症検体検査結果 リソースタイプ:Observation
//   親プロファイル:JP_Observation_LabResult
// ==================================================
Profile: JP_Observation_LabResult_eCS
Parent: JP_Observation_LabResult
Id: JP-Observation-LabResult-eCS
Title:  "eCS:JP_Observation_LabResult_eCS"
Description: "eCS 診療情報・サマリー汎用 Observationリソース（検体検査結果／感染症検体検査結果）プロファイル"

* extension contains JP_eCS_InstitutionNumber named eCS_InstitutionNumber ..1 MS
* extension contains JP_eCS_Department named eCS_Department ..* MS

* ^url = $JP_Observation_LabResult_eCS
* ^status = #active
* ^date = "2023-05-27"
* . ^short = "診療情報における検体検査結果／感染症検体検査結果の格納に使用する"
* . ^definition = "診療情報における検体検査結果／感染症検体検査結果の格納に使用する"
* . ^comment = "このプロファイルは、電子カルテ情報共有サービスに送信するために適合したプロファイルではない。電子カルテ情報共有サービスに送信する場合には、このプロファイルから派生した別の専用プロファイルを用いること。"
// Patinet、Specimen、オーダ医療機関、は最低限の情報をContainedリソースとして記述する


* meta.lastUpdated 1..1 MS
  * insert relative_short_definition("このリソースのデータが最後に作成、更新、複写された日時。最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz　例:2015-02-07T13:28:17.239+09:00")
  * ^comment = "この要素は、このリソースのデータを取り込んで蓄積していたシステムが、このリソースになんらかの変更があった可能性があった日時を取得し、このデータを再取り込みする必要性の判断をするために使われる。本要素に前回取り込んだ時点より後の日時が設定されている場合には、なんらかの変更があった可能性がある（変更がない場合もある）ものとして判断される。したがって、内容になんらかの変更があった場合、またはこのリソースのデータが初めて作成された場合には、その時点以降の日時（たとえば、このリソースのデータを作成した日時）を設定しなければならない。内容の変更がない場合でも、このリソースのデータが作り直された場合や単に複写された場合にその日時を設定しなおしてもよい。ただし、内容に変更がないのであれば、日時を変更しなくてもよい。また、この要素の変更とmeta.versionIdの変更とは、必ずしも連動しないことがある。"
* meta.profile 0..1 MS
  * insert relative_short_definition("準拠しているプロファイルを受信側に通知したい場合には、本文書のプロファイルを識別するURLを指定する。http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_Observation_LabResult_eCS　を設定する。電子カルテ情報共有サービスに本リソースデータを送信する場合には、別に定義されるURLを設定すること。")


* identifier  MS
  * insert relative_short_definition("この検査結果情報を作成した施設内で、この検査結果情報を他の処方薬情報と一意に区別できるID。このID情報をキーとして１検査結果情報の更新・削除ができる一意性があること。このidentifier以外のIDも追加して複数格納しても構わない。少なくともひとつのidentifierは次の仕様に従う値を設定すること。")
  * ^comment = "検査結果情報を他の検査結果情報と一意に区別できるIDを発番できない場合には、省略可能であるが、その場合にはbasedOnで指し示す処方オーダ情報の中に、この処方を作成した施設内で元のオーダを一意に識別できるIDを格納することが望ましい。"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains requestIdentifier 1..1 MS
* identifier[requestIdentifier].system = $JP_ResourceInstanceIdentifier
* identifier[requestIdentifier].system ^comment = "この検査結果情報を作成した施設内で、この検査結果情報を他の検査結果情報と一意に区別できるIDを発番できる場合にのみ、このsystem値（$JP_ResourceInstanceIdentifier）を使用すること。"
* identifier[requestIdentifier].value 1..1 MS
  * insert relative_short_definition("検査結果情報を識別するIDの文字列。URI形式を使う場合には、urn:ietf:rfc:3986に準拠すること。例）\"1311234567-2021-00123456\"")



* basedOn 0..1
* basedOn only Reference(JP_ServiceRequest)
* basedOn ^definition = "このプロファイルでは、検体検査オーダに関する情報。"
* basedOn ^comment = "元のオーダID情報や依頼者情報は必要ならここで記述する。"

// OUL^R22.OBX[*]-11 結果状態
* status ^definition = "検査結果値の状態。"
* status ^definition = "検査結果値の状態。"
* status ^comment = "preliminary:暫定報告（このあとで本報告が予定される場合）、final:確定報告（このあと修正されることはもちろん事情によってはありうるが、この報告段階では確定結果として報告されている、corrected:final報告を修正した（新しい結果が有効である）のどちらかを使用する。例外的に、cancelled: この結果や検査実施が取り消されたので報告は取り消された（報告済みの以前の結果は無効である、間違っていたかもしれない）も使用でき、他にもも　http://hl7.org/fhir/observation-status　から選択可能であるが、意味的に紛らわしいので使わない。【SS-MIX2】OUL^R22.OBX[*]-11 結果状態"
* status 1..1 MS

// OUL^R22
* category MS       
  * insert relative_short_definition("検査結果カテゴリーのコード。system=http://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS code=\"laboratory\"") 

// OUL^R22.OBX[*]-3 検査項目情報

* code 1..1 MS
* code ^definition = "検査項目のコードと名称"
* code ^comment = "JLAC10必須の項目と任意の項目がある。"

* code.coding  ^slicing.discriminator[+].type = #value
* code.coding  ^slicing.discriminator[=].path = "system"
* code.coding  ^slicing.discriminator[+].type = #value
* code.coding  ^slicing.discriminator[=].path = "display"
* code.coding  ^slicing.rules = #closed
* code.coding  contains
  localLaboCode 1..1 MS
 and coreLabo/abo-bld 0..1 MS
 and coreLabo/alb 0..1 MS
 and coreLabo/alp 0..1 MS
 and coreLabo/alt 0..1 MS
 and coreLabo/amy 0..1 MS
 and coreLabo/aptt 0..1 MS
 and coreLabo/ast 0..1 MS
 and coreLabo/bnp 0..1 MS
 and coreLabo/bs 0..1 MS
 and coreLabo/bun 0..1 MS
 and coreLabo/ca 0..1 MS
 and coreLabo/che 0..1 MS
 and coreLabo/ck 0..1 MS
 and coreLabo/cl 0..1 MS
 and coreLabo/cre 0..1 MS
 and coreLabo/crp 0..1 MS
 and coreLabo/crp-class 0..1 MS
 and coreLabo/cys-c 0..1 MS
 and coreLabo/d-bil 0..1 MS
 and coreLabo/dd 0..1 MS
 and coreLabo/fbs 0..1 MS
 and coreLabo/ggt 0..1 MS
 and coreLabo/hb 0..1 MS
 and coreLabo/hba1c-ngsp 0..1 MS
 and coreLabo/hdl-c 0..1 MS
 and coreLabo/k 0..1 MS
 and coreLabo/ld 0..1 MS
 and coreLabo/ldl-c 0..1 MS
 and coreLabo/na 0..1 MS
 and coreLabo/nt-probnp 0..1 MS
 and coreLabo/plt 0..1 MS
 and coreLabo/pt-act 0..1 MS
 and coreLabo/pt-inr 0..1 MS
 and coreLabo/pt-ratio 0..1 MS
 and coreLabo/pt-sec 0..1 MS
 and coreLabo/rbc 0..1 MS
 and coreLabo/rh-bld 0..1 MS
 and coreLabo/t-bil 0..1 MS
 and coreLabo/t-cho 0..1 MS
 and coreLabo/tg 0..1 MS
 and coreLabo/tp 0..1 MS
 and coreLabo/u-ac 0..1 MS
 and coreLabo/u-bld 0..1 MS
 and coreLabo/u-bld-HalfQty 0..1 MS
 and coreLabo/u-bld-QLHalfQty 0..1 MS
 and coreLabo/u-glu 0..1 MS
 and coreLabo/u-glu-HalfQty 0..1 MS
 and coreLabo/u-glu-QLHalfQty 0..1 MS
 and coreLabo/u-pc 0..1 MS
 and coreLabo/ua 0..1 MS
 and coreLabo/utp 0..1 MS
 and coreLabo/utp-QLHalfQty 0..1 MS
 and coreLabo/utp-HalfQty 0..1 MS
 and coreLabo/wbc 0..1 MS
//
 and infectionLabo/hcvcheck 0..1 MS
 and infectionLabo/hbsagsco 0..1 MS
 and infectionLabo/hbsagcoi 0..1 MS
 and infectionLabo/hbsagdil 0..1 MS
 and infectionLabo/hbsagod 0..1 MS
 and infectionLabo/hbsagquant 0..1 MS
 and infectionLabo/hbsagresult 0..1 MS
 and infectionLabo/hbsagposcoi 0..1 MS
 and infectionLabo/hbsabcoi 0..1 MS
 and infectionLabo/hbsabnegcoi 0..1 MS
 and infectionLabo/hbsabdil 0..1 MS
 and infectionLabo/hbsabquant 0..1 MS
 and infectionLabo/hbsabresult 0..1 MS
 and infectionLabo/hcvquant 0..1 MS
 and infectionLabo/hcvresult 0..1 MS
 and infectionLabo/hcvagquant 0..1 MS
 and infectionLabo/hcvagresult 0..1 MS
 and infectionLabo/hcvabcoi 0..1 MS
 and infectionLabo/hcvabdil 0..1 MS
 and infectionLabo/hcvabresult 0..1 MS
 and infectionLabo/hcvabposcoi 0..1 MS
 and infectionLabo/hiv1quant 0..1 MS
 and infectionLabo/hiv1result 0..1 MS
 and infectionLabo/hiv1p2abp24coiv 0..1 MS
 and infectionLabo/hiv1p2abp24coi 0..1 MS
 and infectionLabo/hiv1p2abp24negcoi 0..1 MS
 and infectionLabo/hiv1p2abod 0..1 MS
 and infectionLabo/hiv1p2p24abresult 0..1 MS
 and infectionLabo/hiv1p2abp24qlresult 0..1 MS
 and infectionLabo/hiv1p2p24abquant 0..1 MS
 and infectionLabo/hiv1p2abquant 0..1 MS
 and infectionLabo/hiv1p2abp24result 0..1 MS
 and infectionLabo/hiv1p2abp24poscoi 0..1 MS
 and infectionLabo/hiv1p2abcoi 0..1 MS
 and infectionLabo/hiv1p2abdil 0..1 MS
 and infectionLabo/hiv1p2abresult 0..1 MS
 and infectionLabo/hiv1p2abposcoi 0..1 MS
 and infectionLabo/hiv1abdil 0..1 MS
 and infectionLabo/hiv1abresult 0..1 MS
 and infectionLabo/hiv2abdil 0..1 MS
 and infectionLabo/hiv2abresult 0..1 MS
 and infectionLabo/stsqlresult 0..1 MS
 and infectionLabo/stsquant 0..1 MS
 and infectionLabo/stsresult 0..1 MS
 and infectionLabo/stshquant 0..1 MS
 and infectionLabo/tpresult 0..1 MS
 and infectionLabo/tpquantcoi 0..1 MS
 and infectionLabo/tpnegcoi 0..1 MS
 and infectionLabo/tpquantresult 0..1 MS
 and infectionLabo/tpposcoi 0..1 MS
 and infectionLabo/tpquant 0..1 MS
 and infectionLabo/tphquant 0..1 MS
 and infectionLabo/sts 0..1 MS
 and jlac10LaboCode 0..1 MS // jlac10LaboCode　unCoded　coreLaboSet　のいずれかひとつは必須
 and unCoded 0..1 MS

// コードの全体に適用する大原則
* code from $JP_eCS_ObservationLabResultCode_VS (required)

//ローカルコード
* code.coding[localLaboCode].system = "http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_LocalCode_CS" (exactly)

// 一般JLAC10コード
* code.coding[jlac10LaboCode].system = "urn:oid:1.2.392.200119.4.504" (exactly)
* code.coding[jlac10LaboCode] from $JP_ObservationLabResultCode_VS (required)
// 未標準化コード
* code.coding[unCoded].system = "http://jpfhir.jp/fhir/clins/CodeSystem/JP_CLINS_ObsLabResult_Uncoded_CS" (exactly)
* code.coding[unCoded].code = #99999999999999999 (exactly)
* code.coding[unCoded].display = "未標準化コード項目(JLAC)" (exactly)

// 基本検査項目セット　48項目
* code.coding[coreLabo/abo-bld].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/abo-bld].display = "ABO-BLD" (exactly)	
* code.coding[coreLabo/abo-bld].code from $JP_CLINS_ValueSet_CoreLabo_abo_bld_VS (required)

* code.coding[coreLabo/alb].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/alb].display = "ALB" (exactly)	
* code.coding[coreLabo/alb].code from $JP_CLINS_ValueSet_CoreLabo_alb_VS (required)

* code.coding[coreLabo/alp].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/alp].display = "ALP" (exactly)	
* code.coding[coreLabo/alp].code from $JP_CLINS_ValueSet_CoreLabo_alp_VS (required)

* code.coding[coreLabo/alt].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/alt].display = "ALT" (exactly)	
* code.coding[coreLabo/alt].code from $JP_CLINS_ValueSet_CoreLabo_alt_VS (required)

* code.coding[coreLabo/amy].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/amy].display = "AMY" (exactly)	
* code.coding[coreLabo/amy].code from $JP_CLINS_ValueSet_CoreLabo_amy_VS (required)

* code.coding[coreLabo/aptt].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/aptt].display = "APTT" (exactly)	
* code.coding[coreLabo/aptt].code from $JP_CLINS_ValueSet_CoreLabo_aptt_VS (required)

* code.coding[coreLabo/ast].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/ast].display = "AST" (exactly)	
* code.coding[coreLabo/ast].code from $JP_CLINS_ValueSet_CoreLabo_ast_VS (required)

* code.coding[coreLabo/bnp].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/bnp].display = "BNP" (exactly)	
* code.coding[coreLabo/bnp].code from $JP_CLINS_ValueSet_CoreLabo_bnp_VS (required)

* code.coding[coreLabo/bs].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/bs].display = "BS" (exactly)	
* code.coding[coreLabo/bs].code from $JP_CLINS_ValueSet_CoreLabo_bs_VS (required)

* code.coding[coreLabo/bun].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/bun].display = "BUN" (exactly)	
* code.coding[coreLabo/bun].code from $JP_CLINS_ValueSet_CoreLabo_bun_VS (required)

* code.coding[coreLabo/ca].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/ca].display = "Ca" (exactly)	
* code.coding[coreLabo/ca].code from $JP_CLINS_ValueSet_CoreLabo_ca_VS (required)

* code.coding[coreLabo/che].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/che].display = "ChE" (exactly)	
* code.coding[coreLabo/che].code from $JP_CLINS_ValueSet_CoreLabo_che_VS (required)

* code.coding[coreLabo/ck].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/ck].display = "CK" (exactly)	
* code.coding[coreLabo/ck].code from $JP_CLINS_ValueSet_CoreLabo_ck_VS (required)

* code.coding[coreLabo/cl].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/cl].display = "Cl" (exactly)	
* code.coding[coreLabo/cl].code from $JP_CLINS_ValueSet_CoreLabo_cl_VS (required)

* code.coding[coreLabo/cre].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/cre].display = "Cre" (exactly)	
* code.coding[coreLabo/cre].code from $JP_CLINS_ValueSet_CoreLabo_cre_VS (required)

* code.coding[coreLabo/crp].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/crp].display = "CRP" (exactly)	
* code.coding[coreLabo/crp].code from $JP_CLINS_ValueSet_CoreLabo_crp_VS (required)

* code.coding[coreLabo/crp-class].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/crp-class].display = "CRP-class" (exactly)	
* code.coding[coreLabo/crp-class].code from $JP_CLINS_ValueSet_CoreLabo_crp_class_VS (required)

* code.coding[coreLabo/cys-c].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/cys-c].display = "Cys-C" (exactly)	
* code.coding[coreLabo/cys-c].code from $JP_CLINS_ValueSet_CoreLabo_cys_c_VS (required)

* code.coding[coreLabo/d-bil].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/d-bil].display = "D-Bil" (exactly)	
* code.coding[coreLabo/d-bil].code from $JP_CLINS_ValueSet_CoreLabo_d_bil_VS (required)

* code.coding[coreLabo/dd].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/dd].display = "DD" (exactly)	
* code.coding[coreLabo/dd].code from $JP_CLINS_ValueSet_CoreLabo_dd_VS (required)

* code.coding[coreLabo/fbs].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/fbs].display = "FBS" (exactly)	
* code.coding[coreLabo/fbs].code from $JP_CLINS_ValueSet_CoreLabo_fbs_VS (required)

* code.coding[coreLabo/ggt].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/ggt].display = "GGT" (exactly)	
* code.coding[coreLabo/ggt].code from $JP_CLINS_ValueSet_CoreLabo_ggt_VS (required)

* code.coding[coreLabo/hb].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/hb].display = "Hb" (exactly)	
* code.coding[coreLabo/hb].code from $JP_CLINS_ValueSet_CoreLabo_hb_VS (required)

* code.coding[coreLabo/hba1c-ngsp].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/hba1c-ngsp].display = "HbA1c-NGSP" (exactly)	
* code.coding[coreLabo/hba1c-ngsp].code from $JP_CLINS_ValueSet_CoreLabo_hba1c_ngsp_VS (required)

* code.coding[coreLabo/hdl-c].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/hdl-c].display = "HDL-C" (exactly)	
* code.coding[coreLabo/hdl-c].code from $JP_CLINS_ValueSet_CoreLabo_hdl_c_VS (required)

* code.coding[coreLabo/k].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/k].display = "K" (exactly)	
* code.coding[coreLabo/k].code from $JP_CLINS_ValueSet_CoreLabo_k_VS (required)

* code.coding[coreLabo/ld].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/ld].display = "LD" (exactly)	
* code.coding[coreLabo/ld].code from $JP_CLINS_ValueSet_CoreLabo_ld_VS (required)

* code.coding[coreLabo/ldl-c].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/ldl-c].display = "LDL-C" (exactly)	
* code.coding[coreLabo/ldl-c].code from $JP_CLINS_ValueSet_CoreLabo_ldl_c_VS (required)

* code.coding[coreLabo/na].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/na].display = "Na" (exactly)	
* code.coding[coreLabo/na].code from $JP_CLINS_ValueSet_CoreLabo_na_VS (required)

* code.coding[coreLabo/nt-probnp].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/nt-probnp].display = "NT-proBNP" (exactly)	
* code.coding[coreLabo/nt-probnp].code from $JP_CLINS_ValueSet_CoreLabo_nt_probnp_VS (required)

* code.coding[coreLabo/plt].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/plt].display = "PLT" (exactly)	
* code.coding[coreLabo/plt].code from $JP_CLINS_ValueSet_CoreLabo_plt_VS (required)

* code.coding[coreLabo/pt-act].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/pt-act].display = "PT-act" (exactly)	
* code.coding[coreLabo/pt-act].code from $JP_CLINS_ValueSet_CoreLabo_pt_act_VS (required)

* code.coding[coreLabo/pt-inr].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/pt-inr].display = "PT-INR" (exactly)	
* code.coding[coreLabo/pt-inr].code from $JP_CLINS_ValueSet_CoreLabo_pt_inr_VS (required)

* code.coding[coreLabo/pt-ratio].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/pt-ratio].display = "PT-ratio" (exactly)	
* code.coding[coreLabo/pt-ratio].code from $JP_CLINS_ValueSet_CoreLabo_pt_ratio_VS (required)

* code.coding[coreLabo/pt-sec].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/pt-sec].display = "PT-sec" (exactly)	
* code.coding[coreLabo/pt-sec].code from $JP_CLINS_ValueSet_CoreLabo_pt_sec_VS (required)

* code.coding[coreLabo/rbc].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/rbc].display = "RBC" (exactly)	
* code.coding[coreLabo/rbc].code from $JP_CLINS_ValueSet_CoreLabo_rbc_VS (required)

* code.coding[coreLabo/rh-bld].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/rh-bld].display = "Rh-BLD" (exactly)	
* code.coding[coreLabo/rh-bld].code from $JP_CLINS_ValueSet_CoreLabo_rh_bld_VS (required)

* code.coding[coreLabo/t-bil].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/t-bil].display = "T-Bil" (exactly)	
* code.coding[coreLabo/t-bil].code from $JP_CLINS_ValueSet_CoreLabo_t_bil_VS (required)

* code.coding[coreLabo/t-cho].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/t-cho].display = "T-CHO" (exactly)	
* code.coding[coreLabo/t-cho].code from $JP_CLINS_ValueSet_CoreLabo_t_cho_VS (required)

* code.coding[coreLabo/tg].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/tg].display = "TG" (exactly)	
* code.coding[coreLabo/tg].code from $JP_CLINS_ValueSet_CoreLabo_tg_VS (required)

* code.coding[coreLabo/tp].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/tp].display = "TP" (exactly)	
* code.coding[coreLabo/tp].code from $JP_CLINS_ValueSet_CoreLabo_tp_VS (required)

* code.coding[coreLabo/u-ac].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/u-ac].display = "U-ac" (exactly)	
* code.coding[coreLabo/u-ac].code from $JP_CLINS_ValueSet_CoreLabo_u_ac_VS (required)

* code.coding[coreLabo/u-bld].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/u-bld].display = "U-Bld" (exactly)	
* code.coding[coreLabo/u-bld].code from $JP_CLINS_ValueSet_CoreLabo_u_bld_VS (required)

* code.coding[coreLabo/u-bld-HalfQty].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/u-bld-HalfQty].display = "U-Bld-半定量" (exactly)	
* code.coding[coreLabo/u-bld-HalfQty].code from $JP_CLINS_ValueSet_CoreLabo_u_bld_HalfQty_VS (required)

* code.coding[coreLabo/u-bld-QLHalfQty].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/u-bld-QLHalfQty].display = "U-Bld-定性半定量" (exactly)	
* code.coding[coreLabo/u-bld-QLHalfQty].code from $JP_CLINS_ValueSet_CoreLabo_u_bld_QLHalfQty_VS (required)

* code.coding[coreLabo/u-glu].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/u-glu].display = "U-Glu" (exactly)	
* code.coding[coreLabo/u-glu].code from $JP_CLINS_ValueSet_CoreLabo_u_glu_VS (required)

* code.coding[coreLabo/u-glu-HalfQty].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/u-glu-HalfQty].display = "U-Glu-定性半定量" (exactly)	
* code.coding[coreLabo/u-glu-HalfQty].code from $JP_CLINS_ValueSet_CoreLabo_u_glu_HalfQty_VS (required)

* code.coding[coreLabo/u-glu-QLHalfQty].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/u-glu-QLHalfQty].display = "U-Glu-半定量" (exactly)	
* code.coding[coreLabo/u-glu-QLHalfQty].code from $JP_CLINS_ValueSet_CoreLabo_u_glu_QLHalfQty_VS (required)

* code.coding[coreLabo/u-pc].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/u-pc].display = "U-pc" (exactly)	
* code.coding[coreLabo/u-pc].code from $JP_CLINS_ValueSet_CoreLabo_u_pc_VS (required)

* code.coding[coreLabo/utp].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/utp].display = "U-TP" (exactly)	
* code.coding[coreLabo/utp].code from $JP_CLINS_ValueSet_CoreLabo_utp_VS (required)

* code.coding[coreLabo/utp-HalfQty].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/utp-HalfQty].display = "U-TP-半定量" (exactly)	
* code.coding[coreLabo/utp-HalfQty].code from $JP_CLINS_ValueSet_CoreLabo_utp_HalfQty_VS (required)

* code.coding[coreLabo/utp-QLHalfQty].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/utp-QLHalfQty].display = "U-TP-定性半定量" (exactly)	
* code.coding[coreLabo/utp-QLHalfQty].code from $JP_CLINS_ValueSet_CoreLabo_utp_QLHalfQty_VS (required)

* code.coding[coreLabo/ua].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/ua].display = "UA" (exactly)	
* code.coding[coreLabo/ua].code from $JP_CLINS_ValueSet_CoreLabo_ua_VS (required)

* code.coding[coreLabo/wbc].system = $JP_CLINS_CodeSystem_CoreLabo_CS (exactly)	
* code.coding[coreLabo/wbc].display = "WBC" (exactly)	
* code.coding[coreLabo/wbc].code from $JP_CLINS_ValueSet_CoreLabo_wbc_VS (required)


//---------- ここから感染症検査のスライス定義
* code.coding[infectionLabo/hcvcheck].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hcvcheck].display = "C型肝炎ウイルス検診の判定"  (exactly)
* code.coding[infectionLabo/hcvcheck].code from  $JP_CLINS_ValueSet_InfectionLabo_HCVCHECK_VS  (required)

* code.coding[infectionLabo/hbsagsco].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hbsagsco].display = "HBs抗原(S/CO)"  (exactly)
* code.coding[infectionLabo/hbsagsco].code from  $JP_CLINS_ValueSet_InfectionLabo_HBSAGSCO_VS  (required)

* code.coding[infectionLabo/hbsagcoi].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hbsagcoi].display = "HBs抗原(コントロール比)"  (exactly)
* code.coding[infectionLabo/hbsagcoi].code from  $JP_CLINS_ValueSet_InfectionLabo_HBsAGCOI_VS  (required)

* code.coding[infectionLabo/hbsagdil].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hbsagdil].display = "HBs抗原(希釈倍率)"  (exactly)
* code.coding[infectionLabo/hbsagdil].code from  $JP_CLINS_ValueSet_InfectionLabo_HBsAGDIL_VS  (required)

* code.coding[infectionLabo/hbsagod].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hbsagod].display = "HBs抗原(吸光度)"  (exactly)
* code.coding[infectionLabo/hbsagod].code from  $JP_CLINS_ValueSet_InfectionLabo_HbsAGOD_VS  (required)

* code.coding[infectionLabo/hbsagquant].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hbsagquant].display = "HBs抗原(定量)"  (exactly)
* code.coding[infectionLabo/hbsagquant].code from  $JP_CLINS_ValueSet_InfectionLabo_HBsAGQUANT_VS  (required)

* code.coding[infectionLabo/hbsagresult].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hbsagresult].display = "HBs抗原(判定)"  (exactly)
* code.coding[infectionLabo/hbsagresult].code from  $JP_CLINS_ValueSet_InfectionLabo_HBsAGRESULT_VS  (required)

* code.coding[infectionLabo/hbsagposcoi].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hbsagposcoi].display = "HBs抗原(陽性コントロール比)"  (exactly)
* code.coding[infectionLabo/hbsagposcoi].code from  $JP_CLINS_ValueSet_InfectionLabo_HBsAGPOSCOI_VS  (required)

* code.coding[infectionLabo/hbsabcoi].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hbsabcoi].display = "HBs抗体(コントロール比)"  (exactly)
* code.coding[infectionLabo/hbsabcoi].code from  $JP_CLINS_ValueSet_InfectionLabo_HBsABCOI_VS  (required)

* code.coding[infectionLabo/hbsabnegcoi].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hbsabnegcoi].display = "HBs抗体(陰性コントロール比)"  (exactly)
* code.coding[infectionLabo/hbsabnegcoi].code from  $JP_CLINS_ValueSet_InfectionLabo_HBsABNEGCOI_VS  (required)

* code.coding[infectionLabo/hbsabdil].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hbsabdil].display = "HBs抗体(希釈倍率)"  (exactly)
* code.coding[infectionLabo/hbsabdil].code from  $JP_CLINS_ValueSet_InfectionLabo_HBsABDIL_VS  (required)

* code.coding[infectionLabo/hbsabquant].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hbsabquant].display = "HBs抗体(定量)"  (exactly)
* code.coding[infectionLabo/hbsabquant].code from  $JP_CLINS_ValueSet_InfectionLabo_HBsABQUANT_VS  (required)

* code.coding[infectionLabo/hbsabresult].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hbsabresult].display = "HBs抗体(判定)"  (exactly)
* code.coding[infectionLabo/hbsabresult].code from  $JP_CLINS_ValueSet_InfectionLabo_HBsABRESULT_VS  (required)

* code.coding[infectionLabo/hcvquant].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hcvquant].display = "HCV核酸増幅検査(定量)"  (exactly)
* code.coding[infectionLabo/hcvquant].code from  $JP_CLINS_ValueSet_InfectionLabo_HCVQUANT_VS  (required)

* code.coding[infectionLabo/hcvresult].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hcvresult].display = "HCV核酸増幅検査(判定)"  (exactly)
* code.coding[infectionLabo/hcvresult].code from  $JP_CLINS_ValueSet_InfectionLabo_HCVRESULT_VS  (required)

* code.coding[infectionLabo/hcvagquant].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hcvagquant].display = "HCV抗原検査(定量)"  (exactly)
* code.coding[infectionLabo/hcvagquant].code from  $JP_CLINS_ValueSet_InfectionLabo_HCVAGQUANT_VS  (required)

* code.coding[infectionLabo/hcvagresult].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hcvagresult].display = "HCV抗原検査(判定)"  (exactly)
* code.coding[infectionLabo/hcvagresult].code from  $JP_CLINS_ValueSet_InfectionLabo_HCVAGRESULT_VS  (required)

* code.coding[infectionLabo/hcvabcoi].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hcvabcoi].display = "HCV抗体(コントロール比)"  (exactly)
* code.coding[infectionLabo/hcvabcoi].code from  $JP_CLINS_ValueSet_InfectionLabo_HCVABCOI_VS  (required)

* code.coding[infectionLabo/hcvabdil].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hcvabdil].display = "HCV抗体(希釈倍率)"  (exactly)
* code.coding[infectionLabo/hcvabdil].code from  $JP_CLINS_ValueSet_InfectionLabo_HCVABDIL_VS  (required)

* code.coding[infectionLabo/hcvabresult].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hcvabresult].display = "HCV抗体(判定)"  (exactly)
* code.coding[infectionLabo/hcvabresult].code from  $JP_CLINS_ValueSet_InfectionLabo_HCVABRESULT_VS  (required)

* code.coding[infectionLabo/hcvabposcoi].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hcvabposcoi].display = "HCV抗体(陽性コントロール比)"  (exactly)
* code.coding[infectionLabo/hcvabposcoi].code from  $JP_CLINS_ValueSet_InfectionLabo_HCVABPOSCOI_VS  (required)

* code.coding[infectionLabo/hiv1quant].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hiv1quant].display = "HIV-1(ウイルスRNA定量)"  (exactly)
* code.coding[infectionLabo/hiv1quant].code from  $JP_CLINS_ValueSet_InfectionLabo_HIV1QUANT_VS  (required)

* code.coding[infectionLabo/hiv1result].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hiv1result].display = "HIV-1(ウイルスRNA定量判定)"  (exactly)
* code.coding[infectionLabo/hiv1result].code from  $JP_CLINS_ValueSet_InfectionLabo_HIV1RESULT_VS  (required)

* code.coding[infectionLabo/hiv1p2abp24coiv].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hiv1p2abp24coiv].display = "HIV-1+2抗体・p24抗原(コントロール値)"  (exactly)
* code.coding[infectionLabo/hiv1p2abp24coiv].code from  $JP_CLINS_ValueSet_InfectionLabo_HIV1P2ABP24COIV_VS  (required)

* code.coding[infectionLabo/hiv1p2abp24coi].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hiv1p2abp24coi].display = "HIV-1+2抗体・p24抗原(コントロール比)"  (exactly)
* code.coding[infectionLabo/hiv1p2abp24coi].code from  $JP_CLINS_ValueSet_InfectionLabo_HIV1P2ABP24COI_VS  (required)

* code.coding[infectionLabo/hiv1p2abp24negcoi].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hiv1p2abp24negcoi].display = "IV-1+2抗体・p24抗原(陰性コントロール比)"  (exactly)
* code.coding[infectionLabo/hiv1p2abp24negcoi].code from  $JP_CLINS_ValueSet_InfectionLabo_HIV1P2ABP24NEGCOI_VS  (required)

* code.coding[infectionLabo/hiv1p2abod].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hiv1p2abod].display = "HIV-1+2抗体・p24抗原(吸光度)"  (exactly)
* code.coding[infectionLabo/hiv1p2abod].code from  $JP_CLINS_ValueSet_InfectionLabo_HIV1P2ABOD_VS  (required)

* code.coding[infectionLabo/hiv1p2p24abresult].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hiv1p2p24abresult].display = "HIV-1+2抗体・p24抗原(定性、HIV p24抗原)"  (exactly)
* code.coding[infectionLabo/hiv1p2p24abresult].code from  $JP_CLINS_ValueSet_InfectionLabo_HIV1P2P24ABRESULT_VS  (required)

* code.coding[infectionLabo/hiv1p2abp24qlresult].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hiv1p2abp24qlresult].display = "HIV-1+2抗体・p24抗原(定性、HIV-1+2抗体)"  (exactly)
* code.coding[infectionLabo/hiv1p2abp24qlresult].code from  $JP_CLINS_ValueSet_InfectionLabo_HIV1P2ABP24QLRESULT_VS  (required)

* code.coding[infectionLabo/hiv1p2p24abquant].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hiv1p2p24abquant].display = "HIV-1+2抗体・p24抗原(定量、HIV p24抗原)"  (exactly)
* code.coding[infectionLabo/hiv1p2p24abquant].code from  $JP_CLINS_ValueSet_InfectionLabo_HIV1P2P24ABQUANT_VS  (required)

* code.coding[infectionLabo/hiv1p2abquant].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hiv1p2abquant].display = "HIV-1+2抗体・p24抗原(定量、HIV-1+2抗体)"  (exactly)
* code.coding[infectionLabo/hiv1p2abquant].code from  $JP_CLINS_ValueSet_InfectionLabo_HIV1P2ABQUANT_VS  (required)

* code.coding[infectionLabo/hiv1p2abp24result].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hiv1p2abp24result].display = "HIV-1+2抗体・p24抗原(判定)"  (exactly)
* code.coding[infectionLabo/hiv1p2abp24result].code from  $JP_CLINS_ValueSet_InfectionLabo_HIV1P2ABP24RESULT_VS  (required)

* code.coding[infectionLabo/hiv1p2abp24poscoi].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hiv1p2abp24poscoi].display = "HIV-1+2抗体・p24抗原(陽性コントロール比)"  (exactly)
* code.coding[infectionLabo/hiv1p2abp24poscoi].code from  $JP_CLINS_ValueSet_InfectionLabo_HIV1P2ABP24POSCOI_VS  (required)

* code.coding[infectionLabo/hiv1p2abcoi].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hiv1p2abcoi].display = "HIV-1+2抗体(コントロール比)"  (exactly)
* code.coding[infectionLabo/hiv1p2abcoi].code from  $JP_CLINS_ValueSet_InfectionLabo_HIV1P2ABCOI_VS  (required)

* code.coding[infectionLabo/hiv1p2abdil].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hiv1p2abdil].display = "HIV-1+2抗体(希釈倍率)"  (exactly)
* code.coding[infectionLabo/hiv1p2abdil].code from  $JP_CLINS_ValueSet_InfectionLabo_HIV1P2ABDIL_VS  (required)

* code.coding[infectionLabo/hiv1p2abresult].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hiv1p2abresult].display = "HIV-1+2抗体(判定)"  (exactly)
* code.coding[infectionLabo/hiv1p2abresult].code from  $JP_CLINS_ValueSet_InfectionLabo_HIV1P2ABRESULT_VS  (required)

* code.coding[infectionLabo/hiv1p2abposcoi].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hiv1p2abposcoi].display = "HIV-1+2抗体(陽性コントロール比)"  (exactly)
* code.coding[infectionLabo/hiv1p2abposcoi].code from  $JP_CLINS_ValueSet_InfectionLabo_HIV1P2ABPOSCOI_VS  (required)

* code.coding[infectionLabo/hiv1abdil].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hiv1abdil].display = "HIV-1抗体(希釈倍率)"  (exactly)
* code.coding[infectionLabo/hiv1abdil].code from  $JP_CLINS_ValueSet_InfectionLabo_HIV1ABDIL_VS  (required)

* code.coding[infectionLabo/hiv1abresult].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hiv1abresult].display = "HIV-1抗体(判定)"  (exactly)
* code.coding[infectionLabo/hiv1abresult].code from  $JP_CLINS_ValueSet_InfectionLabo_HIV1ABRESULT_VS  (required)

* code.coding[infectionLabo/hiv2abdil].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hiv2abdil].display = "HIV-2抗体(希釈倍率)"  (exactly)
* code.coding[infectionLabo/hiv2abdil].code from  $JP_CLINS_ValueSet_InfectionLabo_HIV2ABDIL_VS  (required)

* code.coding[infectionLabo/hiv2abresult].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/hiv2abresult].display = "HIV-2抗体(判定)"  (exactly)
* code.coding[infectionLabo/hiv2abresult].code from  $JP_CLINS_ValueSet_InfectionLabo_HIV2ABRESULT_VS  (required)

* code.coding[infectionLabo/stsqlresult].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/stsqlresult].display = "梅毒STS(定性)"  (exactly)
* code.coding[infectionLabo/stsqlresult].code from  $JP_CLINS_ValueSet_InfectionLabo_STSQLRESULT_VS  (required)

* code.coding[infectionLabo/stsquant].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/stsquant].display = "梅毒STS(定量)"  (exactly)
* code.coding[infectionLabo/stsquant].code from  $JP_CLINS_ValueSet_InfectionLabo_STSQUANT_VS  (required)

* code.coding[infectionLabo/stsresult].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/stsresult].display = "梅毒STS(判定)"  (exactly)
* code.coding[infectionLabo/stsresult].code from  $JP_CLINS_ValueSet_InfectionLabo_STSRESULT_VS  (required)

* code.coding[infectionLabo/stshquant].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/stshquant].display = "梅毒STS(半定量)"  (exactly)
* code.coding[infectionLabo/stshquant].code from  $JP_CLINS_ValueSet_InfectionLabo_STSHQUANT_VS  (required)

* code.coding[infectionLabo/tpresult].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/tpresult].display = "梅毒TP抗体(定性)"  (exactly)
* code.coding[infectionLabo/tpresult].code from  $JP_CLINS_ValueSet_InfectionLabo_TPRESULT_VS  (required)

* code.coding[infectionLabo/tpquantcoi].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/tpquantcoi].display = "梅毒TP抗体(定量、コントロール比)"  (exactly)
* code.coding[infectionLabo/tpquantcoi].code from  $JP_CLINS_ValueSet_InfectionLabo_TPQUANTCOI_VS  (required)

* code.coding[infectionLabo/tpnegcoi].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/tpnegcoi].display = "梅毒TP抗体(定量、陰性コントロール比)"  (exactly)
* code.coding[infectionLabo/tpnegcoi].code from  $JP_CLINS_ValueSet_InfectionLabo_TPNEGCOI_VS  (required)

* code.coding[infectionLabo/tpquantresult].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/tpquantresult].display = "梅毒TP抗体(定量、判定)"  (exactly)
* code.coding[infectionLabo/tpquantresult].code from  $JP_CLINS_ValueSet_InfectionLabo_TPQUANTRESULT_VS  (required)

* code.coding[infectionLabo/tpposcoi].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/tpposcoi].display = "梅毒TP抗体(定量、陽性コントロール比)"  (exactly)
* code.coding[infectionLabo/tpposcoi].code from  $JP_CLINS_ValueSet_InfectionLabo_TPPOSCOI_VS  (required)

* code.coding[infectionLabo/tpquant].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/tpquant].display = "梅毒TP抗体(定量)"  (exactly)
* code.coding[infectionLabo/tpquant].code from  $JP_CLINS_ValueSet_InfectionLabo_TPQUANT_VS  (required)

* code.coding[infectionLabo/tphquant].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/tphquant].display = "梅毒TP抗体(半定量)"  (exactly)
* code.coding[infectionLabo/tphquant].code from  $JP_CLINS_ValueSet_InfectionLabo_TPHQUANT_VS  (required)

* code.coding[infectionLabo/sts].system = $JP_CLINS_CodeSystem_InfectionLabo_CS  (exactly)
* code.coding[infectionLabo/sts].display = "梅毒反応"  (exactly)
* code.coding[infectionLabo/sts].code from  $JP_CLINS_ValueSet_InfectionLabo_STS_VS  (required)

 
// OUL^R22.OBX[*]-3[*]-1    コード　
// OUL^R22.OBX[*]-3[*]-1のコードが &TCM　で終了する場合には、&TCMの直前までの文字列をコメントコードとみなして、同じ

// OUL^R22.OBX[*]-3[*]-2
* code.coding.display ^short = "コード化された場合に、そのコード表におけるコードに対応する文字列"
* code.coding.display ^definition = "コード化された場合に、そのコード表におけるコードに対応する文字列"
* code.coding.display ^comment = "標準コードに対応する標準名称文字列が規定されていないことも多いため、この要素は省略できる。値が存在する場合に受信側がこの文字列をどのように使用するかについては特に定めない。ただし、3文書6情報を電子カルテ共有サービスに送信する場合には、「検体検査結果情報における検査項目のコーディング規則」を厳守する必要がある。"

* code.text 1..1 MS   
* code.text ^definition = "項目名。報告書などに記載する場合に使用する表示名。"
* code.text ^comment = "【JP Core仕様】このプロファイルでは、表示名として必須とする。\r\n\r\n多くの場合、coding.display と同一になるが、coding.display に異なる複数の表現が格納される場合を想定し、code間で共通の表現として必須とする。受信側はこの文字列を項目表示文字列として使用できる。ただし、3文書6情報を電子カルテ共有サービスに送信する場合には、「検体検査結果情報における検査項目のコーディング規則」を厳守する必要がある。"

// 患者情報
* subject 1..1   MS
* subject ^short = "患者のPatientリソース参照記述"
* subject ^definition = "対象となる患者のFHIRリソースへの参照。Bundleリソースなどで本リソースから参照可能なPatientリソースが同時に存在することを前提に、そのリソースに記述されている被保険者個人識別子や施設内患者IDなどの情報をidentifier要素でLogical Reference記述するか。またはそのリソースのfullUrlを記述する（comment参照のこと）。"
* subject ^comment = "ContainedリソースによりPatientリソースを本リソースの要素として記述した上で、そのリソースをLiteral 参照する方法をとっても構わない。電子カルテ共有サービスでは、別途BundleリソースでPatientリソースが送信されているので、その被保険者個人識別子を明示することにより患者を参照する。"


// OUL^R22.PV1
* encounter 0..1 MS
* encounter only  Reference(JP_Encounter)
* encounter ^short = "この検査が行われた受診情報（入外区分など）"
* encounter ^definition = "この検査が行われた受診情報（入外区分など）を表すEncounterリソース（Containedリソース）への参照"
* encounter ^comment = "Containedリソースに含まれるEncounterリソースをリソース内で参照する。【JP Core仕様】入院外来の区別や所在場所、担当診療科の情報、外来での検査か入院での検査かの区別に使用する。必須ではない。"

// OUL^R22.OBX[*]-14 検査日時
* effective[x] 1..    MS   // MS 追加
* effective[x] only dateTime // or Period or Timing 
* effectiveDateTime ^short = "検体採取日時"
* effectiveDateTime ^definition = "検体採取日時。検体採取日時が不明な場合には、検査実施日時、検体受付日時の場合もある。結果報告日時はissued要素を使用する。"
* effectiveDateTime ^comment = "dateTime型に限定する。dateTime側は、1905-08-23, 2015-02-07T13:28:17+09:00 "

* issued MS
* issued ^short = "検査結果がシステムに格納された日時、システム的な結果報告（登録）日時"
* issued ^definition = "検査結果がシステムに格納された日時、システム的な結果報告（登録）日時。"
* issued ^comment = "instance型であるため、2015-02-07T13:28:17+09:00 のように時刻までの精度が必要である。"

// OUL^R22.OBX[*]-5  結果
// OUL^R22.OBX[*]-6  単位
* value[x] MS
* value[x] only Quantity or CodeableConcept or string
* value[x] ^short = "検体検査の結果"
* value[x] ^definition = "検体検査の結果"
* value[x] ^comment = "valueQuantity,valueCodeableConcept,valueStringのいずれかを使用する。"

// if OUL^R22.OBX[*]-2 == "NM":
// OUL^R22.OBX[*]-5  結果
// OUL^R22.OBX[*]-6  単位
* valueQuantity ^short = "検査結果が「数値」の場合、値、単位を設定する。"
* valueQuantity ^comment = ""

// if OUL^R22.OBX[*]-2 == "CWE":
// OUL^R22.OBX[*]-5  結果
* valueCodeableConcept ^short = "検査結果が「コード値」の場合、コード、テキスト、コードのValue setを定義する。"
* valueCodeableConcept ^definition = "結果がコード化されたコンセプトで記述できる場合。定性検査値の場合などに使用する。質問項目の回答記号もコードと回答文字列とみなしてこの結果記述方法を使用することができる。"

// if OUL^R22.OBX[*]-2 == "ST":
// OUL^R22.OBX[*]-5  結果
* valueString ^short = "検査結果値が「文字列」の場合、その文字列を指定する。"

// Valueが欠落する場合には必ずその理由コードを記述する
* dataAbsentReason MS
* dataAbsentReason ^definition = "検査結果値が欠落している理由。"
* dataAbsentReason ^comment = "【JP Core仕様】SS-MIX2で未使用だが、valueの欠落時に使用する必要があり、重要な項目である。\r\n\r\n制約「obs-6」に示す通り、valueが存在する場合、この要素は存在してはならない。\r\n\r\ntextのみでの使用は基本的に不可とし、必ずcodingを以下から設定すること。適切な理由を選べないシステムの場合には、unknownを使用するものとする。\r\n\r\n(unknown：値が存在するかしないか不明 |  masked：結果非開示 | not-applicable：適用外（システム適用外など、生体にありえない項目（男性患者における女性固有検査値など）） | as-text ：テキスト表現で別途記述| error ：システムエラー|   not-a-number：結果が数値でない、数値化エラー |   negative-infinity：数値が小さすぎて表現できない |   positive-infinity：数値が大きすぎて表現 | not-performed：未実施| not-permitted：結果取得が許可されていない"

// OUL^R22.OBX[*]-8 （基準値範囲はOUL^R22.OBX[*]-7) 
* interpretation MS
* interpretation ^short = "High, low, normal, etc. 高、低、正常など"
* interpretation ^definition = "検査結果値の、（高、低、正常）といったカテゴリー評価。結果報告書に記載されることもある情報。"
* interpretation ^comment = "【JP Core仕様】拡張可コード表「ObservationInterpretationCodes」からいずれかの適当なコードをひとつ使用するが、本要素はなくてもよい。その施設における基準値が設定されている数値検査結果に対しては、基準値範囲により解釈したH（高）、L（低）、N（正常範囲） のいずれかを設定することが望ましい。\r\n\r\nコード表が大きいため、下記参照。\r\n\r\nhttps://www.hl7.org/fhir/R4/valueset-observation-interpretation.html"
* interpretation ^requirements = "特に数値結果については、結果の重要性を完全に理解するために解釈を必要。"

* note MS
* note ^short = "検査、あるいは結果に関するコメント。フリーテキストの追加情報として使用可能。"
* note ^definition = "検査、あるいは結果に関するコメント。フリーテキストの追加情報として使用可能。"


// OUL^R22.SPM-4[*]
* specimen 1.. MS
* specimen only Reference(JP_Specimen)
* specimen ^short = "この検査に使用された検体（標本）。"
* specimen ^definition = "この検査に使用された検体（標本）を表すSpecimenリソース（Containedリソース）への参照。検体材料に関する情報を記述したSpecimenリソースをContainedリソースとして本リソースに埋め込んで、それを参照すること。\r\n３文書６情報の作成では、JP_Specimenタイプのリソース（Specimen.idの値が\"#specimen203987\"と仮定）が本リソースのContainedリソースとして埋め込み記述されることが必須であるため、そのcontainedリソースのid値(Specimen.id)を記述する。(例 2\r\n{\r\n  \"reference\":  \"#specimen203987\"\r\n})\r\nとなる。"

* specimen ^comment = "Containedリソースに含まれるSpecimenリソースをリソース内で参照する。必須。"

// OUL^R22.OBX[*]-7
* referenceRange MS

* hasMember MS
* hasMember ^short = "この検査に含まれる個々の検査結果項目を示す。"
* hasMember ^definition = "この検査（パネルやバッテリ）が結果を持たない親項目（グループ項目に相当）の場合に、この検査に含まれる個々の検査結果への参照を示す。"
* hasMember ^comment = "この検査が複数の検査項目をグループ化したパネル検査もしくはバッテリー検査の場合に、このグループに含まれる個々の検査の参照へのリストである。この場合には、本Observationリソースのvalueは存在しない。Bundleリソースなどで本リソースから参照可能なObservationリソースが同時に存在する場合には、そのリソースの識別URIを参照する。この検査に含まれる個々の検査結果Observationリソースを、このリソースに埋め込むのではなく、別の検査結果Observationリソースとして作成し、そのidentifierを論理参照する方法をとること。"
* hasMember only Reference(JP_Observation_LabResult)
* derivedFrom only Reference(JP_Observation_LabResult)
* derivedFrom ^short = "派生元（素材元）の検査結果への参照のリスト。"
* derivedFrom ^definition = "この検査が他の1つ以上の検査値から派生している（BMIが体重と身長から派生して算出される場合など）場合に、その派生元の検査への参照のリスト。記述方法としては、hasMember要素と同様に記述する。"



