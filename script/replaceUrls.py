# 入力ファイルの各行を読み込み、文字列"simplifier"が含まれる行について次のようなURL変換処理をする。
# https://simplifier.net/resolve?scope=jp-core.r4@1.1.1-snap&amp;canonical=http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Common
#    ↓
# https://jpfhir.jp/fhir/core/1.1.1/StructureDefinition-jp-observation-common.html
# その後、その行を出力する。
# また、文字列"simpifier"が含まれない行については、そのまま出力する。
# なお、入力ファイルは、コマンドライン引数で指定する。
# 例：python test2.py input.txt

import sys

with open(sys.argv[1], "r") as f:
    sys.stderr.println("sys.argv[1]="+sys.argv[1]+" sys.argv[2]="+sys.argv[2])
    for line in f:
        sys.stderr.write(line)
        if "https://simplifier.net/resolve?scope=jp-core.r4@1.1.1" in line:
            sys.stderr.write(line)
            line = line.replace("https://simplifier.net/resolve?scope=jp-core.r4@1.1.1-snap&amp;canonical=http://jpfhir.jp/fhir/core/StructureDefinition/",
                                 "https://jpfhir.jp/fhir/core/"+sys.argv[2]+"StructureDefinition/").replace("_","-").replace("structuredefinition-","StructureDefinition-")
            # 行末に　".html"を追加する。            
            line = line.rstrip()
            line = line + ".html"
            line = line.lower()
            sys.stderr.write(line)
            print(line)
        else:
            print(line)
