# 入力ファイルの各行を読み込み、文字列"simplifier"が含まれる行について次のようなURL変換処理をする。
# https://simplifier.net/resolve?scope=jp-core.r4@1.1.1-snap&amp;canonical=http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Common
#    ↓
# https://jpfhir.jp/fhir/core/1.1.1/StructureDefinition-jp-observation-common.html
# その後、その行を出力する。
# また、文字列"simpifier"が含まれない行については、そのまま出力する。
# なお、入力ファイルは、コマンドライン引数で指定する。
# 例：python test2.py input.txt

import sys
import re
with open(sys.argv[1], "r") as f:
#    print("sys.argv[1]="+sys.argv[1]+" sys.argv[2]="+sys.argv[2], file=sys.stderr)
    escapedVersion = sys.argv[2].replace(".","\.")
#    print(escapedVersion)

    for line in f:
#        sys.stderr.write(line)
        if "https://simplifier.net/resolve?scope=jp-core.r4@1.1.1" in line:
#            sys.stderr.write(line)
            m = re.search('https:\/\/simplifier\.net\/resolve\?scope=jp-core\.r4@' + escapedVersion + '-snap&amp;canonical=http:\/\/jpfhir\.jp\/fhir\/core\/StructureDefinition\/(.*?)">(.*)$',line)
            if m :
#                print("m.group(1)="+m.group(1),file=sys.stderr)
#                print("m.group(2)="+m.group(2),file=sys.stderr)
                profileUrl = m.group(1).lower().replace("_","-")+".html"
                line = line.replace("https://simplifier.net/resolve?scope=jp-core.r4@1.1.1-snap&amp;canonical=http://jpfhir.jp/fhir/core/StructureDefinition/"+m.group(1),
                                 "https://jpfhir.jp/fhir/core/"+sys.argv[2]+"/StructureDefinition-"+profileUrl)
            print(line)
        else:
            print(line)
