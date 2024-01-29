// DocumentReferenceリース
// JP_DocumentReference
// JP_DocumentReference_eCS

Instance: ccourseReferralExample01
InstanceOf: JP_DocumentReference_eCS
Usage: #example
  
Description: "DocumentReferenceリソース　（診療情報提供書　臨床経過）"

* meta.lastUpdated = 2023-03-31T00:00:00+09:00
* meta.profile[+] = "http://jpfhir.jp/fhir/eCS/StructureDefinition/JP_DocumentReference_eCS"
* status = #current

* type.coding.system = "http://loinc.org"
* type.coding.code = #11506-3
* type.coding.display = "Progress note"

* description = "臨床経過"

* content[+].attachment.contentType = #text/plain;charset=UTF-8
* content[=].attachment.data = "6aOf5qyy5LiN5oyv44Go5b+D56qp6YOo55eb44KS6KqN44KB44Gf77yO5oKq5b+D5ZiU5ZCQ44GM44G/44KJ44KM77yM5ZCQ54mp44Gr5paw6a6u6KGA44GM5re35YWl44GX44Gm44GE44Gf44Gf44KB5pWR5oCl5aSW5p2l44KS5Y+X6Ki644GX77yM57eK5oCl5YWl6Zmi44Go44Gq44Gj44Gf77yOCuWFpemZouaZguePvueXhzrouqvplbcxNjIuNWNt77yM5L2T6YeNNDUuMmtn77yM6KGA5ZynODAvNjBtbUhn77yM6ISI5ouNODAv5YiG77yM5pW077yM5L2T5ripMzYuNO+8jgrnnLznnrzntZDohpzjgavosqfooYDjgpLoqo3jgoHjgZ/vvI7ohbnpg6jjga/lubPlnabvvIzou5/jgafohavnmKTjgoTlnKfnl5vjgarjgZfvvI7ohbjooJXli5Xpn7PmraPluLjvvI4K5YWl6Zmi5pmC5qSc5p+75oiQ57i+KFRhYmxlMSk65pyr5qKi6KGA5ray5qSc5p+744Gn77yMSGI1LjBnL2Rs77yMSHQxNS41JeOBqOiRl+aYjuOBquiyp+ihgOOCkuiqjeOCgeOBn++8jgrkuIrpg6jmtojljJbnrqHlhoXoppbpj6HmpJzmn7s65YWl6Zmi57+M5pel44Gu5qSc5p+744Gn44Gv77yM5q6L6IOD5ZC75ZCI6YOo5b6M5aOB44Gr57SEMi41Y23jga7mvbDnmI3lvaLmiJDjgpLoqo3jgoHvvIzmvbDnmI3lupXjgavlh53ooYDloYrjga7ku5jnnYDjgZfjgZ/pnLLlh7rooYDnrqHjgajmgJ3jgo/jgozjgovpmobotbfjgYzjgb/jgonjgozjgZ/jgYzvvIzmlrDprq7lh7rooYDjga/jgarjgY/vvIzmipfmvbDnmI3olqzmipXkuI7jgavjgojjgovntYzpgY7oprPlr5/jgajjgarjgaPjgZ/vvI4="


