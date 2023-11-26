// ==============================
//   Profile 定義
// ==============================
Profile: JP_Observation_SEAMAT
Parent: JP_Observation_Common
Id: jp-observation-seamat
Title: "SEAMAT Common Observation Profile"
Description: "このプロファイルはObservationリソースに対して、SEAMAT共通の測定結果／解析結果のデータを送受信するための制約と拡張を定めたものである。"
* ^url = $JP_Observation_SEAMAT
* ^status = #active
* ^date = "2023-11-13"
* . ^short = "SEAMATの測定結果／解析結果"
* . ^definition = "SEAMATの測定結果／解析結果の格納に使用する。"
* meta.lastUpdated 1.. MS
* meta.profile 1.. MS
//* meta.profile = $JP_Observation_SEAMAT

* identifier ..0
* basedOn ..0
* partOf ..0
* status = #final (exactly)
* category ..0

* code ^definition = "Describes what was observed. Sometimes this is called the observation \"name\".\r\n\r\n検査の内容の説明。検査名称。\r\n
【CDA項目】/ClinicalDocument/component/structuredBody/component/section/entry/observation/code"

* subject 1..
* subject only Reference(JP_Patient_SEAMAT)

* focus ..0
* encounter ..0
* effective[x] ..0
* issued ..0
* performer ..0

* value[x] 1..1 MS
* value[x] ^definition = "The information determined as a result of making the observation, if the information has a simple value.\r\n\r\n検体検査の結果として決定された情報。\r\n
【CDA項目】/ClinicalDocument/component/structuredBody/component/section/entry/observation/value"

* dataAbsentReason ^definition = "Provides a reason why the expected value in the element Observation.value[x] is missing.\r\n\r\n検査結果値が欠落している理由。\r\n
【CDA項目】/ClinicalDocument/component/structuredBody/component/section/entry/observation/value/@nullFlavor"

* interpretation ..0
* note ..0
* bodySite ..0
* method ..0
* specimen ..0
* device ..0
* referenceRange ..0
* hasMember ..0
* derivedFrom ..0

* component.code ^definition = "Describes what was observed. Sometimes this is called the observation \"code\".\r\n
【CDA項目】/ClinicalDocument/component/structuredBody/component/section/entry/observation/value/entryRelationship/observation/code"
* component.value[x] ^definition = "The information determined as a result of making the observation, if the information has a simple value.\r\n
【CDA項目】/ClinicalDocument/component/structuredBody/component/section/entry/observation/value/entryRelationship/observation/value"
* component.dataAbsentReason ^definition = "Provides a reason why the expected value in the element Observation.component.value[x] is missing.\r\n
【CDA項目】/ClinicalDocument/component/structuredBody/component/section/entry/observation/value/entryRelationship/observation/value/@nullFlavor"

* component.interpretation ..0
* component.referenceRange ..0
