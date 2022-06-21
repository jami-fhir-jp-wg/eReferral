// 別表１	文書区分コード	OID:	1.2.392.100495.20.2.11
CodeSystem: MHLW_codeSystem_ePreCDA_documentCategory_tbl01
Id: mhlw-codeSystem-ePreCDA-documentCategory-tbl011
Description: "厚労省電子処方CDA規格別表１ 文書区分コード"
* ^url = "urn:oid:1.2.392.100495.20.2.11"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/mhlw-ePreCDA-documentCategory"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #01  "処方箋"
* #02  "調剤結果"

// 別表２	セクション区分コード	OID: 1.2.392.100495.20.2.12
CodeSystem: MHLW_codeSystem_ePreCDA_sectionCategory_tbl02
Id: mhlw-codeSystem-ePreCDA-sectionCategory-tbl02
Description: "厚労省電子処方CDA規格別表2 セクション区分コード"
* ^url = "urn:oid:1.2.392.100495.20.2.12"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/mhlw-ePreCDA-sectionCategory"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #01	"処方指示"	
* #02	"調剤実施内容"	
* #11	"保険・公費情報"	
* #101	"備考情報 処方箋の備考情報"
* #102	"備考情報 調剤結果の備考情報"
* #201	"補足情報"	

// 別表３	剤形区分コード	OID: 1.2.392.100495.20.2.21
CodeSystem:  MHLW_codeSystem_ePreCDA_drugsageForm_tbl03
Id: mhlw-codeSystem-ePreCDA-drugUsageForm-tbl03
Description: "厚労省電子処方CDA規格別表3  剤形区分コード"
* ^url = "urn:oid:1.2.392.100495.20.2.21"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/mhlw-ePreCDA-drugsageForm"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #1	"内服"	
* #2	"頓服"	
* #3	"外用"	
* #4	"内服滴剤"	
* #5	"注射"	
* #6	"医療材料"	
* #9	"その他	剤形が判断できない場合等"

// 別表４	力価区分コード	OID: 1.2.392.100495.20.2.22
CodeSystem:  MHLW_codeSystem_ePreCDA_drugDosageStrength_tbl04
Id: mhlw-codeSystem-ePreCDA-drugDosageStrength-tbl04
Description: "厚労省電子処方CDA規格別表4 力価区分コード"
* ^url = "urn:oid:1.2.392.100495.20.2.22"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/mhlw-ePreCDA-drugDosageStrength"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #1	"製剤量"	
* #2	"原薬量"

// 別表５	用法コード	OID: 1.2.392.100495.20.2.31
// = JAMI   処方・注射オーダ標準用法規格（http://jami.jp/jamistd/）用法コード
// = 	urn:oid:1.2.392.200250.2.2.20.20
/*
CodeSystem:  MHLW_codeSystem_ePreCDA_jamiOrderUsageCode_tbl05
Id:   mhlw-codeSystem-ePreCDA-jamiOrderUsageCode-tbl05
Description: "厚労省電子処方CDA規格別表5 JAMI16桁用法コード"
* ^url = "urn:oid:1.2.392.100495.20.2.31"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/mhlw-ePreCDA-jamiOrderUsageCode"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
*/


// JAMI   処方・注射オーダ標準用法規格（http://jami.jp/jamistd/）用法16桁コード
// 別ファイルに外だし
/*
CodeSystem:  JAMI_codeSystem_ePreOrderUsageCode_16digits
Id:   jami-codeSystem-ePreOrderUsageCode-16digits
Description: "JAMI16桁用法コード"
* ^url = "urn:oid:1.2.392.200250.2.2.20.20"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/jami-ePreOrderUsageCode"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
*/


// 別表6 補足用法コード	OID: 1.2.392.100495.20.2.32
// = JAMI補足用法コード8桁
// コードリスト準備中
/*
CodeSystem:  MHLW_codeSystem_ePreCDA_jamiOrderUsageAuxCode_tbl06
Id:   mhlw-codeSystem-ePreCDA-jamiOrderUsageAuxCode-tbl06
Description: "厚労省電子処方CDA規格別表5  JAMI補足用法コード8桁"
* ^url = "urn:oid:1.2.392.200250.2.2.20.32"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/mhlw-ePreCDA-jamiOrderUsageAuxCode"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
*/

// JAMI補足用法コード8桁
// コードリスト準備中

CodeSystem:  JAMI_codeSystem_ePreOrderUsageAuxCode
Id:   jami-codeSystem-ePreOrderUsageAuxCode
Description: "JAMI補足用法コード8桁"
* ^url = "urn:oid:1.2.392.200250.2.2.20.22"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/jami-ePreOrderUsageAuxCode"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false

* #V11NNNNN    "不均等・１回目・１単位量"
* #V12NNNNN    "不均等・１回目・２単位量"
* #V13NNNNN   "不均等・１回目・３単位量"
* #V14NNNNN   "不均等・１回目・４単位量"
* #V15NNNNN   "不均等・１回目・５単位量"
* #V16NNNNN   "不均等・１回目・６単位量"
* #V17NNNNN   "不均等・１回目・７単位量"
* #V18NNNNN   "不均等・１回目・８単位量"
* #V19NNNNN   "不均等・１回目・９単位量"

* #V21NNNNN   "不均等・１回目・１単位量"
* #V22NNNNN   "不均等・１回目・２単位量"
* #V23NNNNN   "不均等・１回目・３単位量"
* #V24NNNNN   "不均等・１回目・４単位量"
* #V25NNNNN   "不均等・１回目・５単位量"
* #V26NNNNN   "不均等・１回目・６単位量"
* #V27NNNNN   "不均等・１回目・７単位量"
* #V28NNNNN   "不均等・１回目・８単位量"
* #V29NNNNN   "不均等・１回目・９単位量"

* #V31NNNNN   "不均等・１回目・１単位量"
* #V32NNNNN   "不均等・１回目・２単位量"
* #V33NNNNN   "不均等・１回目・３単位量"
* #V34NNNNN   "不均等・１回目・４単位量"
* #V35NNNNN   "不均等・１回目・５単位量"
* #V36NNNNN   "不均等・１回目・６単位量"
* #V37NNNNN   "不均等・１回目・７単位量"
* #V38NNNNN   "不均等・１回目・８単位量"
* #V39NNNNN   "不均等・１回目・９単位量"

* #V41NNNNN   "不均等・１回目・１単位量"
* #V42NNNNN   "不均等・１回目・２単位量"
* #V43NNNNN   "不均等・１回目・３単位量"
* #V44NNNNN   "不均等・１回目・４単位量"
* #V45NNNNN   "不均等・１回目・５単位量"
* #V46NNNNN   "不均等・１回目・６単位量"
* #V47NNNNN   "不均等・１回目・７単位量"
* #V48NNNNN   "不均等・１回目・８単位量"
* #V49NNNNN   "不均等・１回目・９単位量"

* #V51NNNNN   "不均等・１回目・１単位量"
* #V52NNNNN   "不均等・１回目・２単位量"
* #V53NNNNN   "不均等・１回目・３単位量"
* #V54NNNNN   "不均等・１回目・４単位量"
* #V55NNNNN   "不均等・１回目・５単位量"
* #V56NNNNN   "不均等・１回目・６単位量"
* #V57NNNNN   "不均等・１回目・７単位量"
* #V58NNNNN   "不均等・１回目・８単位量"
* #V59NNNNN   "不均等・１回目・９単位量"

* #V61NNNNN   "不均等・１回目・１単位量"
* #V62NNNNN   "不均等・１回目・２単位量"
* #V63NNNNN   "不均等・１回目・３単位量"
* #V64NNNNN   "不均等・１回目・４単位量"
* #V65NNNNN   "不均等・１回目・５単位量"
* #V66NNNNN   "不均等・１回目・６単位量"
* #V67NNNNN   "不均等・１回目・７単位量"
* #V68NNNNN   "不均等・１回目・８単位量"
* #V69NNNNN   "不均等・１回目・９単位量"

* #I1100000  "隔日投与"
* #W1100001  "日曜日、月曜日"
* #W0110000  "月曜日、火曜日"
* #W0101000  "月曜日、水曜日"
* #W0100100  "月曜日、木曜日"
* #W0100010  "月曜日、金曜日"
* #W0100001  "月曜日、土曜日"

* #W0010000  "火曜日、水曜日"
* #W0011000  "火曜日、目曜日"
* #W0000100  "火曜日、木曜日"
* #W0000010  "火曜日、金曜日"
* #W0000001  "火曜日、土曜日"


// JAMI部位コード3桁
CodeSystem:  JAMI_codeSystem_ePreSiteCode
Id:   jami-codeSystem-ePreSiteCode
Description: "JAMI標準用法部位コード（３桁）"
* ^url = "urn:oid:1.2.392.200250.2.2.20.32"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/jami-ePreSiteCode"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #010  "全身"
* #120  "頭皮"
* #12L  "左頭皮"
* #12R  "右頭皮"
* #130  "頭部"
* #13L  "左頭部"
* #13R  "右頭部"
* #140  "頭頂部"
* #150  "後頭部"
* #15L  "左後頭部"
* #15R  "右後頭部"
* #210  "ひたい"
* #21L  "左ひたい"
* #21R  "右ひたい"
* #220  "顔"
* #22B  "両顔"
* #22L  "左顔"
* #22R  "右顔"
* #230  "まゆ"
* #23B  "両まゆ"
* #23L  "左まゆ"
* #23R  "右まゆ"
* #240  "まゆのまわり"
* #24B  "両まゆのまわり"
* #24L  "左まゆのまわり"
* #24R  "右まゆのまわり"
* #250  "まぶた"
* #25B  "両まぶた"
* #25L  "左まぶた"
* #25R  "右まぶた"
* #260  "眼"
* #26B  "両眼"
* #26L  "左眼"
* #26R  "右眼"
* #270  "目のまわり"
* #27B  "両目のまわり"
* #27L  "左目のまわり"
* #27R  "右目のまわり"
* #310  "頬"
* #31B  "両頬"
* #31L  "左頬"
* #31R  "右頬"
* #320  "鼻"
* #32L  "左鼻"
* #32R  "右鼻"
* #330  "鼻のまわり"
* #33L  "左鼻のまわり"
* #33R  "右鼻のまわり"
* #340  "鼻の下"
* #34L  "左鼻の下"
* #34R  "右鼻の下"
* #350  "鼻腔内"
* #35B  "両鼻腔内"
* #35L  "左鼻腔内"
* #35R  "右鼻腔内"
* #420  "耳"
* #42B  "両耳"
* #42L  "左耳"
* #42R  "右耳"
* #430  "耳たぶ"
* #43B  "両耳たぶ"
* #43L  "左耳たぶ"
* #43R  "右耳たぶ"
* #440  "耳のうしろ"
* #44B  "両耳のうしろ"
* #44L  "左耳のうしろ"
* #44R  "右耳のうしろ"
* #450  "耳のまわり"
* #45B  "両耳のまわり"
* #45L  "左耳のまわり"
* #45R  "右耳のまわり"
* #460  "耳の中"
* #46B  "両耳の中"
* #46L  "左耳の中"
* #46R  "右耳の中"
* #520  "口"
* #530  "口のまわり"
* #540  "口唇"
* #550  "口腔内"
* #55L  "左口腔内"
* #55R  "右口腔内"
* #560  "口腔内ほほの内側"
* #56B  "両口腔内ほほの内側"
* #56L  "左口腔内ほほの内側"
* #56R  "右口腔内ほほの内側"
* #570  "口腔内上あご部"
* #57B  "両口腔内上あご部"
* #57L  "左口腔内上あご部"
* #57R  "右口腔内上あご部"
* #580  "上歯茎部"
* #58B  "両上歯茎部"
* #58L  "左上歯茎部"
* #58R  "右上歯茎部"
* #590  "下歯茎部"
* #59B  "両下歯茎部"
* #59L  "左下歯茎部"
* #59R  "右下歯茎部"
* #5A0  "舌"
* #5AL  "左舌"
* #5AR  "右舌"
* #5B0  "舌の裏側"
* #5BL  "左舌の裏側"
* #5BR  "右舌の裏側"
* #610  "喉の奥"
* #61L  "左喉の奥"
* #61R  "右喉の奥"
* #620  "扁桃腺部"
* #62B  "両扁桃腺部"
* #62L  "左扁桃腺部"
* #62R  "右扁桃腺部"
* #630  "下あご"
* #63L  "左下あご"
* #63R  "右下あご"
* #640  "首"
* #64B  "両首"
* #64L  "左首"
* #64R  "右首"
* #650  "うなじ"
* #65L  "左うなじ"
* #65R  "右うなじ"
* #710  "肩"
* #71B  "両肩"
* #71L  "左肩"
* #71R  "右肩"
* #720  "上肢"
* #72B  "両上肢"
* #72L  "左上肢"
* #72R  "右上肢"
* #730  "腕"
* #73B  "両腕"
* #73L  "左腕"
* #73R  "右腕"
* #740  "上腕"
* #74B  "両上腕"
* #74L  "左上腕"
* #74R  "右上腕"
* #750  "前腕"
* #75B  "両前腕"
* #75L  "左前腕"
* #75R  "右前腕"
* #760  "ひじ"
* #76B  "両ひじ"
* #76L  "左ひじ"
* #76R  "右ひじ"
* #770  "手"
* #77B  "両手"
* #77L  "左手"
* #77R  "右手"
* #780  "手の甲"
* #78B  "両手の甲"
* #78L  "左手の甲"
* #78R  "右手の甲"
* #790  "手のひら"
* #79B  "両手のひら"
* #79L  "左手のひら"
* #79R  "右手のひら"
* #7A0  "手の指"
* #7AB  "両手の指"
* #7AL  "左手の指"
* #7AR  "右手の指"
* #7B0  "手の指の間"
* #7BB  "両手の指の間"
* #7BL  "左手の指の間"
* #7BR  "右手の指の間"
* #7C0  "手の爪"
* #7CB  "両手の爪"
* #7CL  "左手の爪"
* #7CR  "右手の爪"
* #7D0  "手足"
* #7DB  "両手足"
* #7DL  "左手足"
* #7DR  "右手足"
* #810  "体幹部"
* #81L  "左体幹部"
* #81R  "右体幹部"
* #820  "背中"
* #82L  "左背中"
* #82R  "右背中"
* #830  "上背部"
* #83L  "左上背部"
* #83R  "右上背部"
* #840  "脇の下"
* #84B  "両脇の下"
* #84L  "左脇の下"
* #84R  "右脇の下"
* #850  "全胸部"
* #85L  "左胸部"
* #85R  "右胸部"
* #860  "乳房"
* #86B  "両乳房"
* #86L  "左乳房"
* #86R  "右乳房"
* #870  "乳房まわり"
* #87B  "両乳房まわり"
* #87L  "左乳房まわり"
* #87R  "右乳房まわり"
* #880  "乳首"
* #88B  "両乳首"
* #88L  "左乳首"
* #88R  "右乳首"
* #890  "上腹部"
* #89L  "左上腹部"
* #89R  "右上腹部"
* #8A0  "下腹部"
* #8AL  "左下腹部"
* #8AR  "右下腹部"
* #8B0  "へそ"
* #8C0  "へそのまわり"
* #8D0  "臀部"
* #8DB  "両臀部"
* #8DL  "左臀部"
* #8DR  "右臀部"
* #8E0  "陰のう"
* #8EB  "両陰のう"
* #8EL  "左陰のう"
* #8ER  "右陰のう"
* #8F0  "陰部"
* #8FL  "左陰部"
* #8FR  "右陰部"
* #8G0  "股間部"
* #8GL  "左股間部"
* #8GR  "右股間部"
* #8H0  "肛門部"
* #8J0  "肛門周囲"
* #910  "下肢"
* #91B  "両下肢"
* #91L  "左下肢"
* #91R  "右下肢"
* #920  "ふともも"
* #92B  "両ふともも"
* #92L  "左ふともも"
* #92R  "右ふともも"
* #930  "ふともも後ろ"
* #93B  "両ふともも後ろ"
* #93L  "左ふともも後ろ"
* #93R  "右ふともも後ろ"
* #940  "ふとももとすね"
* #94B  "両ふとももとすね"
* #94L  "左ふとももとすね"
* #94R  "右ふとももとすね"
* #950  "膝"
* #95B  "両膝"
* #95L  "左膝"
* #95R  "右膝"
* #960  "膝のうら"
* #96B  "両膝のうら"
* #96L  "左膝のうら"
* #96R  "右膝のうら"
* #970  "すね"
* #97B  "両すね"
* #97L  "左すね"
* #97R  "右すね"
* #980  "ふくらはぎ"
* #98B  "両ふくらはぎ"
* #98L  "左ふくらはぎ"
* #98R  "右ふくらはぎ"
* #990  "くるぶし"
* #99B  "両くるぶし"
* #99L  "左くるぶし"
* #99R  "右くるぶし"
* #9A0  "かかと"
* #9AB  "両かかと"
* #9AL  "左かかと"
* #9AR  "右かかと"
* #9B0  "足"
* #9BB  "両足"
* #9BL  "左足"
* #9BR  "右足"
* #9C0  "足の裏"
* #9CB  "両足の裏"
* #9CL  "左足の裏"
* #9CR  "右足の裏"
* #9D0  "足の甲"
* #9DB  "両足の甲"
* #9DL  "左足の甲"
* #9DR  "右足の甲"
* #9E0  "足のゆび"
* #9EB  "両足のゆび"
* #9EL  "左足のゆび"
* #9ER  "右足のゆび"
* #9F0  "足のゆびの間"
* #9FB  "両足のゆびの間"
* #9FL  "左足のゆびの間"
* #9FR  "右足のゆびの間"
* #9G0  "足の爪"
* #9GB  "両足の爪"
* #9GL  "左足の爪"
* #9GR  "右足の爪"
* #A10  "かゆい所"
* #A1B  "両かゆい所"
* #A1L  "左かゆい所"
* #A1R  "右かゆい所"
* #A20  "カサカサした所"
* #A30  "じくじくした所"
* #A40  "ひどい所"
* #A50  "褥瘡部"
* #A60  "発赤部"
* #A70  "発疹部"
* #A80  "ストマ部"
* #A90  "カテ挿入部"
* #AA0  "患部"
* #AAL  "左患部"
* #AAR  "右患部"

// JAMI標準基本用法区分コード1桁
// コードリスト準備中

CodeSystem:  JAMI_codeSystem_ePreBasicUsageMethod_OneDigit
Id:   jami-codeSystem-ePreBasicUsageMethod-OneDigit
Description: "JAMI標準基本用法区分コード1桁"
* ^url = "urn:oid:1.2.392.200250.2.2.20.30"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/jami-codeSystem-ePreBasicUsageMethod-OneDigit"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #1  "内服"
* #2  "外用"
* #3  "注射"
* #4  "注入"


// JAMI標準投与方法区分コード2桁
// コードリスト準備中

CodeSystem:  JAMI_codeSystem_ePreDetailUsageMethod_TwoDigits
Id:   jami-codeSystem-ePreDetailUsageMethod-TwoDigits
Description: "JAMI標準投与方法区分コード2桁"
* ^url = "urn:oid:1.2.392.200250.2.2.20.40"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/jami-ePreDetailUsageMethod"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #10 "経口"
* #11 "舌下"
* #12 "バッカル"
* #13 "経口内塗布"
* #2A  "貼付"
* #2B  "塗布"
* #2C  "湿布"
*  #2D  "撒布"
*  #2E  "噴霧"
*  #2F  "消毒"
*  #2G  "点耳"
*  #2H  "点眼"
*  #2J  "点鼻"
*  #2K  "うがい"
*  #2L  "吸入"
*  #2M  "トローチ"
*  #2N  "膀胱洗浄"
*  #2P  "鼻腔内洗浄"
*  #2Q  "浣腸"
*  #2R  "肛門挿入"
*  #2S  "肛門注入"
*  #2T  "膣内挿入"
*  #2U  "膀胱注入"
*  #30  "静脈注射"
*  #31  "中心静脈注射"
*  #32  "皮下注射"
*  #33  "筋肉内注射"
*  #34  "皮内注射"
*  #35  "動脈注射"
*  #3A  "硬膜外注射"
*  #3B  "脳脊髄腔注射"
*  #3C  "骨髄内注射"
*  #3D  "関節腔内注射"
*  #3E  "腱鞘内注射"
*  #3F  "腱鞘周囲注射"
*  #3G  "硝子体内注射"
*  #3H  "結膜下注射"
*  #3J  "テノン氏のう内注射"
*  #3K  "耳茸内注射"
*  #3L  "咽頭注射"
*  #3M  "胸腔内注射"
*  #3N  "痔核注射"
*  #3P  "角膜内注射"
*  #3Q  "球後注射"
*  #3R  "腹腔内注射"
*  #3Z  "局所・病巣内注射"
*  #40  "腹膜透析"
*  #41  "気管内注入"
*  #42  "涙のう内注入"
*  #43  "鼓室内注入"
*  #44  "滑液囊穿刺後の注入"
*  #45  "腹腔内注入"
*  #4Z  "病巣内注入"

// HL7医薬品投与経路コード（JAHIS 使用者定義表 0162 投薬経路）
CodeSystem:  JAMI_codeSystem_ePreUsageRoute
Id:   jami-codeSystem-ePreUsageRoute
Description: "HL7医薬品投与経路コード（JAHIS 使用者定義表 0162 投薬経路）"
* ^url = "http://jpfhir.jp/fhir/ePrescription/CodeSystem/route-codes"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/route-codes"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #AP  "外用"
* #B  "頬"
* #DT  "歯"
* #EP  "硬膜外"
* #ET  "気管内チューブ"
* #NT  "鼻気管内チューブ"
* #GTT  "消化器官"
* #GU  "GU洗浄"
* #IMR  "浸透"
* #IA  "動脈内"
* #IB  "滑液包内"
* #IC  "心臓内"
* #ICV  "子宮内"
* #ID  "皮膚内"
* #IH  "吸入"
* #IHA  "肝内動脈"
* #IM  "筋肉内"
* #IN  "鼻腔内"
* #IO  "眼内"
* #IP  "腹腔内"
* #IS  "滑液包内"
* #IT  "鞘内"
* #IU  "子宮内"
* #IV  "静脈内"
* #MTH  "口／喉"
* #MM  "粘膜"
* #NS  "鼻側"
* #NG  "経口径内腔"
* #NP  "鼻のプロング"
* #OP  "眼"
* #OT  "耳"
* #OTH  "その他／さまざま"
* #PF  "灌流"
* #PO  "口"
* #PR  "直腸"
* #RM  "リブリーザーマスク"
* #SD  "湿性包帯"
* #SC  "皮下"
* #SL  "舌下"
* #TP  "局所"
* #TRA  "気管切開"
* #TD  "経皮性"
* #TL  "経舌"
* #UR  "尿道"
* #VG  "膣"
* #VM  "換気マスク"
* #WND  "創傷"

// 処方箋備考区分
CodeSystem: JP_codeSystem_ePreCommunication_category
Id:   jp-codeSystem-ePreCommunication-category
Description: "処方箋備考区分"
* ^url = "http://jpfhir.jp/fhir/ePrescription/CodeSystem/communication-category"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/communication-category"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #1  "処方箋備考"
* #2  "調剤者への指示"
* #3  "残薬確認指示"


// 調剤指示コード（備考欄）

CodeSystem:  JAMI_codeSystem_ePreDispenseInstruction
Id:   jami-codeSystem-ePreDispenseInstruction
Description: "調剤指示コード（備考欄）"
* ^url = "urn:oid:1.2.392.200250.2.2.30.10"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/jami-ePreDispenseInstruction"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #C "粉砕指示"
* #OP "一包化指示"
* #SP "別包化指示"
* #MX "混合指示"

// 別表８	後発品変更不可コード	OID: 1.2.392.100495.20.2.41
CodeSystem:  MHLW_codeSystem_ePreCDA_unable2Change2Generic_tbl08
Id: mhlw-codeSystem-ePreCDA-unable2Change2Generic-tbl08
Description: "厚労省電子処方CDA規格別表8 後発品変更不可コード"
* ^url = "urn:oid:1.2.392.100495.20.2.41"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/mhlw-ePreCDA-unable2Change2Generic"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #0	"変更可"
* #1	"変更不可"	
* #2	"剤形変更不可"	
* #3	"含量規格変更不可"

// 別表９	残薬確認指示コード	OID: 1.2.392.100495.20.2.42
CodeSystem: MHLW_codeSystem_ePreCDA_instructionResidual_tbl09
Id: mhlw-codeSystem-ePreCDA-instructionResidual-tbl09
Description: "厚労省電子処方CDA規格別表9 残薬確認指示コード"
* ^url = "urn:oid:1.2.392.100495.20.2.42"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/mhlw-ePreCDA-instructionResidual"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #0	"指示無し"
* #1	"疑義照会の上調剤"	
* #2	"情報提供"	

// 別表１０	診療科コード	OID:	1.2.392.100495.20.2.51
CodeSystem:  MHLW_codeSystem_ePreCDA_clinicalDepartment_tbl10
Id: mhlw-codeSystem-ePreCDA-clinicalDepartment-tbl10
Description: "厚労省電子処方CDA規格別表10 診療科コード"
* ^url = "urn:oid:1.2.392.100495.20.2.51"
// * ^valueSet = "http://jpfhir.jp/fhir/Common/ValueSet/mhlw-ePreCDA-clinicalDepartment"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #01	"内科"	
* #02	"精神科"	
* #03	"神経科"	
* #04	"神経内科"	
* #05	"呼吸器科"	
* #06	"消化器科"	
* #07	"胃腸科"	
* #08	"循環器科"	
* #09	"小児科"	
* #10	"外科"	
* #11	"整形外科"	
* #12	"形成外科"	
* #13	"美容外科"	
* #14	"脳神経外科"	
* #15	"呼吸器外科"	
* #16	"心臓血管外科"	
* #17	"小児外科"	
* #18	"皮膚泌尿器科"	
* #19	"皮膚科"	
* #20	"泌尿器科"	
* #21	"性病科"	
* #22	"肛門科"	
* #23	"産婦人科"	
* #24	"産科"	
* #25	"婦人科"	
* #26	"眼科"	
* #27	"耳鼻咽喉科"	
* #28	"気管食道科"	
* #30	"放射線科"	
* #31	"麻酔科"	
* #33	"心療内科"	
* #34	"アレルギー科"	
* #35	"リウマチ科"	
* #36	"リハビリテーション科"	
* #37	"病理診断科"	
* #38	"臨床検査科"	
* #39	"救急科"	
* #90	"歯科"	

// 別表１１	保険種別コード	OID: 1.2.392.100495.20.2.61
CodeSystem:  MHLW_codeSystem_ePreCDA_insuranceCategory_tbl11
Id:   mhlw-codeSystem-ePreCDA-insuranceCategory-tbl11
Description: "厚労省電子処方CDA規格別表11 保険種別コード"
* ^url = "urn:oid:1.2.392.100495.20.2.61"
// * ^valueSet = "http://jpfhir.jp/fhir/Common/ValueSet/mhlw-ePreCDA-insuranceCategory"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #1	"医保"	
* #2	"国保"	
* #3	"労災"	
* #4	"自賠責"	
* #5	"公害"	
* #6	"自費"	
* #7	"後期高齢者"	
* #8	"公費"	

// 別表１２	被保険者区分コード	OID: 1.2.392.100495.20.2.62
CodeSystem:  MHLW_codeSystem_ePreCDA_insuredRelationship_tbl12
Id:   mhlw-codeSystem-ePreCDA-insuredRelationship-tbl12
Description: "厚労省電子処方CDA規格別表12 被保険者区分コード"
* ^url = "urn:oid:1.2.392.100495.20.2.62"
// * ^valueSet = "http://jpfhir.jp/fhir/Common/ValueSet/mhlw-ePreCDA-insuredRelationship"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #1	"被保険者"	
* #2	"被扶養者"	


// 別表１３	患者一部負担コード	OID: 1.2.392.100495.20.2.63
CodeSystem:  MHLW_codeSystem_ePreCDA_insuredCoPayCategory_tbl13
Id:   mhlw-codeSystem-ePreCDA-insuredCoPayCategory-tbl13
Description: "厚労省電子処方CDA規格別表13 患者一部負担コード"
* ^url = "urn:oid:1.2.392.100495.20.2.63"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/mhlw-ePreCDA-insuredCoPayCategory"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #1	"高齢者一般（高一）"	
* #2	"高齢者 7 割（高７）"	
* #3	"６歳未満（６歳）"

// コードリスト準備中
/*
// 別表 14	レセプト種別コード	OID: 1.2.392.100495.20.2.64
CodeSystem:  MHLW_codeSystem_claimCategory_tbl14
Id:   mhlw-codeSystem-claimCategory-tbl14
Description: "レセプト種別コード"
* ^url = "urn:oid:1.2.392.100495.20.2.64"
// * ^valueSet = "http://jpfhir.jp/fhir/Common/ValueSet/mhlw-claimCategory"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
*/

// 別表１５	医薬品コード	（レセ電算医薬品マスター）	OID: 1.2.392.100495.20.2.71
// コードリスト準備中
/*
CodeSystem:   MHLW_codeSystem_claimDrugCode_tbl15
Id:    mhlw-codeSystem-claimDrugCode-tbl15
Description: "医薬品コード(レセ電算医薬品マスター)"
* ^url = "urn:oid:1.2.392.100495.20.2.71"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/mhlw-eclaimDrugCode"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
*/

// 別表１６	薬価基準収載医薬品コード（厚生労働省コード）	OID: 1.2.392.100495.20.1.72
// コードリスト準備中
/*
CodeSystem:  MHLW_codeSystem_priceStdDrugCode_tbl16
Id:   mhlw-codeSystem-priceStdDrugCode-tbl16
Description: "薬価基準収載医薬品コード"
* ^url = "urn:oid:1.2.392.100495.20.1.72"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/mhlw-priceStdDrugCode"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
*/

// 医薬品コード（YJコード）
// = YJ コード（個別医薬品コード）　OID: 1.2.392.100495.20.2.73
// コードリスト準備中
/*
CodeSystem:  JP_codeSystem_drugCode_yj
Id:   jp-codeSystem-drugCode-yj
Description: "医薬品コード（YJコード）"
* ^url = "urn:oid:1.2.392.100495.20.1.73"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/jp-drugCode-yj"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
*/

// http://terminology.hl7.org/ValueSet/v3-ActEncounterCode
// EncounterActコード
/*
CodeSystem:  HL7V3_ActEncounterCode
Id:   v3-ActEncounterCode
Description: "EncounterActコード"
* ^url = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
//// * ^valueSet = "http://terminology.hl7.org/ValueSet/v3-ActEncounterCode"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #AMB  "外来"
* #IMP  "入院"
*/

// 厚労省HOTコード（9桁） OID:1.2.392.100495.20.2.74
// = MEDIS HOTコード（9桁）"urn:oid:1.2.392.200119.4.403.1"
// コードリスト準備中
/*
CodeSystem:  MHLW_codeSystem_drugCode_hot9
Id:   mhlw-codeSystem-drugCode-HOT9
Description: "厚労省医薬品コードHOTコード（9桁）"
* ^url = "urn:oid:1.2.392.100495.20.2.74"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/mhlw-drugCode-hot9"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
*/

// MEDIS HOTコード（9桁）
// = 厚労省 OID:1.2.392.100495.20.2.74
// コードリスト準備中
/*
CodeSystem:  JP_codeSystem_drugCode_hot9
Id:   jp-codeSystem-drugCode-hot9
Description: "MEDIS 医薬品コードHOTコード（9桁）"
* ^url = "urn:oid:1.2.392.200119.4.403.1"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/jp-drugCode-hot9"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
*/

// 一般処方名マスター
// = 厚労省一般名処方マスタ	OID:1.2.392.100495.20.2.81
// コードリスト準備中
/*
CodeSystem:  MHLW_codeSystem_drugCode_generalNameCode
Id:   mhlw-codeSystem-drugCode-generalNameCode
Description: "厚労省一般処方名マスター(厚労省保険局コード)"
* ^url = "urn:oid:1.2.392.100495.20.1.81"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/mhlw-drugCode-generalNameCode"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
*/

// GTIN 14桁
// コードリスト準備中
/*
CodeSystem:  JP_codeSystem_drugCode_gs1_14
Id:   jp-codeSystem-drugCode-gs1-14
Description: "医薬品コードGTIN 14桁"
* ^url = "urn:oid:2.51.1.1"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/jp-drugCode-gs1-14"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
*/

// 別表２０	医薬品単位略号	OID: 1.2.392.100495.20.2.101
CodeSystem:  MHLW_codeSystem_drugUnitAbbr_tbl20
Id:   mhlw-codeSystem-drugUnitAbbr-tbl20
Description: "厚労省電子処方CDA規格別表２０	医薬品単位略号"
* ^url = "urn:oid:1.2.392.100495.20.2.101"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/mhlw-codeSystem-drugUnitAbbr"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #PART	"分"
* #TIME	"回"
* #KIND	"種"	
* #BOX	"箱"	
* #ROLL	"巻"	
* #SHT	"枚"	
* #HON	"本"	
* #PAIR	"組"	
* #SET	"セット"	
* #KO	"個"	
* #TEAR	"裂"	
* #DIR	"方向"	
* #TROC	"トローチ"	
* #AMP	"アンプル"	
* #CAP	"カプセル"	
* #TAB	"錠"	
* #PILL	"丸"	
* #PCK	"包"	
* #BTL	"瓶"	
* #BAG	"袋"	
* #BTLB	"瓶（袋）"
* #TUBE	"管"	
* #SYRG	"シリンジ"	
* #DOSE	"回分"	
* #TEST	"テスト分"	
* #GCYL	"ガラス筒"	
* #RODT	"桿錠"	
* #UNT	"単位"	
* #TTUN	"万単位"	
* #FEET	"フィート"	
* #DROP	"滴"	
* #MG	"ｍｇ"	
* #G	"ｇ"	
* #KG	"ｋｇ"	
* #CC	"ｃｃ"	
* #ML	"ｍＬ"	
* #L	"Ｌ"	
* #MLV	"ｍＬＶ"	
* #VIL	"バイアル"	
* #CM	"ｃｍ"	
* #CM2	"ｃｍ２"	
* #M	"ｍ"	
* #MCCI	"μＣｉ"	
* #MCI	"ｍＣｉ"	
* #MCG	"μｇ"	
* #BKR	"管（瓶）"	
* #PIPE	"筒"	
* #GBQ	"ＧＢｑ"	
* #MGBQ	"ＭＢｑ"	
* #KIT	"キット"	
* #IUNT	"国際単位"	
* #PAT	"患者当り"	
* #ATM	"気圧"	
* #CAN	"缶"	
* #OPE	"手術当り"	
* #VSL	"容器"	
* #MLG	"ｍＬ（ｇ）"	
* #BLST	"ブリスター"	
* #SHET	"シート"	
* #CST	"カセット"	
* #TUNT	"千単位"	
* #TTIU	"万国際単位"	
* #MEQ	"ｍEｑ"	
* #MCL	"μＬ"	

// 別表２２	点数表番号	OID: 1.2.392.100495.20.3.22
CodeSystem:  MHLW_codeSystem_claimOrganizationCategory_tbl22
Id:   mhlw-codeSystem-claimOrganizationCategory-tbl22
Description: "厚労省電子処方CDA規格別別表２２ 点数表番号"
* ^url = "urn:oid:1.2.392.100495.20.3.22"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/mhlw-codeSystem-claimOrganizationCategory"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #1	"医科"	
* #3	"歯科"	
* #4	"調剤"	
* #6	"訪問看護"	

// 別表２3	保険医療機関番号（7桁）	OID: 1.2.392.100495.20.3.23
// 固定のコード表にはできないので、ルールベースでチェックすることが必要か
CodeSystem:  MHLW_codeSystem_claimOrganizationNo7digits_tbl23
Id:   mhlw-codeSystem-claimOrganizationNo7digits-tbl23
Description: "厚労省電子処方CDA規格別別表２３ 保険医療機関番号（7桁）"
* ^url = "urn:oid:1.2.392.100495.20.1.23"
// * ^valueSet = "http://jpfhir.jp/fhir/Common/ValueSet/mhlw-codeSystem-claimOrganizationNo7digits"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #1234567  "保険医療機関番号１２３４５６７ダミー"

// 医籍登録番号
// urn:oid:1.2.392.100495.20.3.31
// 未定義

//　麻薬施用者免許番号
// urn:oid:1.2.392.100495.20.3.32.1[都道府県番号]
// 未定義

// 医療者役割コード(処方)
CodeSystem:  JP_codeSystem_practitioner_role_category
Id:   jp-codeSystem-practitioner-role-category
Description: "医療者役割コード(処方)"
* ^url = "http://jpfhir.jp/fhir/Common/CodeSystem/practitioner-role-category"
// * ^valueSet = "http://jpfhir.jp/fhir/Common/ValueSet/practitioner-role-category"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #doctor "医師"
* #dentist "歯科医師"

// 保険者番号
// 固定のコード表の作成が可能か厚労省に確認する
CodeSystem:  JP_codeSystem_insurerNumber
Id:   jp-codeSystem-insurerNumber
Description: "保険者番号"
* ^url = "urn:oid:1.2.392.100495.20.3.61"
// * ^valueSet = "http://jpfhir.jp/fhir/Common/ValueSet/insurerNumber"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #06123456 "サンプル健康保険組合06123456"

// 公費負担者番号
// 固定のコード表の作成が可能か厚労省に確認する
CodeSystem:  JP_codeSystem_publicPyerNumber
Id:   jp-codeSystem-publicPyerNumber
Description: "公費負担者番号"
* ^url = "urn:oid:1.2.392.100495.20.3.71"
// * ^valueSet = "http://jpfhir.jp/fhir/Common/ValueSet/publicPyerNumber"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #01234567 "サンプル公費負担者0123456"



// 都道府県番号	1.2.392.100495.20.3.21
CodeSystem:  JP_codeSystem_prefectureNumber
Id:   jp-codeSystem-prefectureNumber
Description: "都道府県番号"
* ^url = "urn:oid:1.2.392.100495.20.3.21"
// * ^valueSet = "http://jpfhir.jp/fhir/Common/ValueSet/prefectureNumber"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #01	"北海道"
* #02	"青森県"
* #03	"岩手県"
* #04	"宮城県"
* #05	"秋田県"
* #06	"山形県"
* #07	"福島県"
* #08	"茨城県"
* #09	"栃木県"
* #10	"群馬県"
* #11	"埼玉県"
* #12	"千葉県"
* #13	"東京都"
* #14	"神奈川県"
* #15	"新潟県"
* #16	"富山県"
* #17	"石川県"
* #18	"福井県"
* #19	"山梨県"
* #20	"長野県"
* #21	"岐阜県"
* #22	"静岡県"
* #23	"愛知県"
* #24	"三重県"
* #25	"滋賀県"
* #26	"京都府"
* #27	"大阪府"
* #28	"兵庫県"
* #29	"奈良県"
* #30	"和歌山県"
* #31	"鳥取県"
* #32	"島根県"
* #33	"岡山県"
* #34	"広島県"
* #35	"山口県"
* #36	"徳島県"
* #37	"香川県"
* #38	"愛媛県"
* #39	"高知県"
* #40	"福岡県"
* #41	"佐賀県"
* #42	"長崎県"
* #43	"熊本県"
* #44	"大分県"
* #45	"宮崎県"
* #46	"鹿児島県"
* #47	"沖縄県"

// 医療文書区分コード
// コードリスト作成途中　健診結果報告書コード　未定
CodeSystem:  JP_codeSystem_documentTypeCode
Id:   jp-codeSystem-documentTypeCode
Description: "FHIR文書の文書区分（医療文書全般）"
* ^url = "http://jpfhir.jp/fhir/Common/CodeSystem/doc-typecodes"
// * ^valueSet = "http://jpfhir.jp/fhir/Common/ValueSet/doc-typecodes"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #JPGCHKUP01 "健診結果報告書"
* #JPMCHKUP01 "自治体検診結果報告書"
* #18842-5 "退院時サマリー"
* #57133-1 "診療情報提供書"
* #57833-6 "処方箋"

// 処方箋区分コード
CodeSystem:  JP_codeSystem_prescription_category
Id:   jp-codeSystem-prescription-category
Description: "処方箋区分コード　（01:一般処方箋、02:麻薬処方箋、03:分割一般処方）"
* ^url = "http://jpfhir.jp/fhir/ePrescription/CodeSystem/prescription-category"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/prescription-category"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #01 "一般処方箋"
* #02 "麻薬処方箋"
* #03 "分割一般処方"

// 処方セクション区分コード
CodeSystem: JP_codeSystem_ePrescription_section
Id: jp-codeSystem-ePrescription-section
Description: "処方セクション区分コード"
* ^url = "http://jpfhir.jp/fhir/ePrescription/CodeSystem/prescription-section"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/prescription-category"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #01 "処方情報セクション"
* #11 "分割処方箋セクション"
* #12 "別紙セクション"


// 医療従事者資格種別
CodeSystem:  JP_codeSystem_practitioner_certificate_category
Id:   jp-codeSystem-practitioner-certificate-category
Description: "医療従事者資格種別"
* ^url = "http://jpfhir.jp/fhir/core/CodeSystem/practitioner-certificate-category"
// * ^valueSet = "http://jpfhir.jp/fhir/ePrescription/ValueSet/practitioner-certificate-category"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false
* #MedicalDoctorLicense "医師"
* #NarcoticsPractitioner "麻薬施用者"


