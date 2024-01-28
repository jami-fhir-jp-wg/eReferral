# 特定健診の項目表CSVを読んで、すべての項目のObservationプロファイルのFSHを標準出力に出力する
# CSVファイルは第一引数でパス名で指定すること。

import sys
import csv
'''
XML用特定健診項目情報,,,,,,,,,,,,,,,,,,,,,,,,,実施項目,法定報告項目,区分番号,区分名称,順番号,項目コード（17桁）,項目名,"データタイプ",XMLデータ型,最大バイト長,数値型の場合の形式,表示用単位,XML用単位,author要素,一連検査グループ識別,一連検査グループ関係コード,同一性項目コード,同一性項目名称,XML検査方法コード,検査方法,結果コードOID,項目コードOID,XML化にあたっての備考,備考,,
〇,〇,10,身体計測,10,9N001000000000001,身長,数字,PQ,5,NNN.N,cm,cm,,,,9N001,身長,,,,1.2.392.200119.6.1005,,,,
,,50,生化学検査,330,3F015000002327201,空腹時中性脂肪(トリグリセリド),数字,PQ,5,NNNNN,mg/dl,mg/dL,,,,3F015,中性脂肪（トリグリセリド）,3F01520000,2：紫外吸光光度法(酵素比色法・グリセロール消去),,1.2.392.200119.6.1005,V4.0でXML表示名変更,,,

'''
def headerCommonBlock(itemName,itemCode, itemCodeOID):
    print('Profile:        JP_Observation_eCheckup_spec_' + itemCode)
    print('Parent:         JP_Observation_Common_eCheckupGeneral')
    print('Id:             JP-Observation-eCheckup-spec-' + itemCode)
    print('//Title:          "特定健診結果報告書　Observationリソース　検査結果情報"')
    print('Description:    "特定健診結果報告書　Observationリソース　検査結果情報　' + itemName +'"')
    print('* ^url = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Observation_eCheckup_spc_' + itemCode +'"')
    print('* ^status = #draft')
    print('* ^date = "2024-01-15"')
    print('* code ^definition = "検査項目を表す識別IDと検査名称の情報。コード化されていること。必須項目。"')
    print('* code = ' + itemCodeOID + '#' + itemCode + '"' + itemName + '"   // urn:oid:1.2.392.200119.6.1005  //特定健診項目コード表')
    print('* specimen 0..0')

def valueBlock(dataType, unitName, unitCode, author, groupTag, groupRelCode,methodCode, methodName, valueOID)
    if (dataType = '数字'):
        print('* valueQuantity.value 1..1')
        print('* valueQuantity.unit = "' + unitName + '" //表示用単位')
        print('* valueQuantity.system = "http://unitsofmeasure.org" //固定値')
        print('* valueQuantity.code = #' + unitCode + '//XML用単位')
        print('// 制約　NNN.N')

def performerBlock()
    print('* valueQuantity.unit = "' + unitName + '" //表示用単位')
    print('* valueQuantity.system = "http://unitsofmeasure.org" //固定値')
    print('* valueQuantity.code = #' + unitCode + '//XML用単位')
    print('// 制約　NNN.N')


# ヘッダ付csvをDictとして読み込む
with open(sys.argv[1],encoding='utf8',  newline='') as csvf:
    csvreader = csv.DictReader(csvf)
    for row in csvreader:
        print(row['名前'])





"""
Profile:        JP_Observation_eCheckup_spc_XXXX
Parent:         JP_Observation_Common_eCheckupGeneral
Id:             JP-Observation-eCheckup-spc-XXXX
//Title:          "健診結果報告書　Observationリソース　検査結果情報"
Description:    "健診結果報告書　Observationリソース　検査結果情報　XXXX"
* ^url = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Observation_eCheckup_spc_XXXX"
* ^status = #draft
* ^date = "2024-01-15"

* code ^definition = "検査項目を表す識別IDと検査名称の情報。コード化されていること。必須項目。"
* code = $specialCheckup_observations_cs#9N001000000000001 "身長"   // urn:oid:1.2.392.200119.6.1005  //特定健診項目コード表
* specimen 0..0
* valueQuantity.unit = "cm" //表示用単位
* valueQuantity.system = "http://unitsofmeasure.org" //固定値
* valueQuantity.code = #cm //XML用単位
// 制約　NNN.N

Profile:        JP_Observation_eCheckup_spc_YYYY
Parent:         JP_Observation_Common_eCheckupGeneral
Id:             JP-Observation-eCheckup-spc-YYYY
//Title:          "健診結果報告書　Observationリソース　検査結果情報"
Description:    "健診結果報告書　Observationリソース　検査結果情報　YYYY"
* ^url = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/JP_Observation_eCheckup_spc_YYYY"
* ^status = #draft
* ^date = "2024-01-15"

* code ^definition = "検査項目を表す識別IDと検査名称の情報。コード化されていること。必須項目。"
* code = $specialCheckup_observations_cs#9N006000000000001 "体重"   // urn:oid:1.2.392.200119.6.1005  //特定健診項目コード表
* specimen 0..0
* valueQuantity.unit = "kg" //表示用単位
* valueQuantity.system = "http://unitsofmeasure.org" //固定値
* valueQuantity.code = #kg //XML用単位
// 制約　NNN.N

"""