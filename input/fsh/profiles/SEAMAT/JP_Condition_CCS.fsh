Invariant: condition-ccs-metaprofile
Description: "meta.profileには、指定したプロファイルのURLの記述が存在しなければならない。"
Severity: #error
Expression: "meta.profile.where($this = 'http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Condition_CCS').exists()"

// ==============================
//   Profile 定義
// ==============================
Profile: JP_Condition_CCS
Parent: Condition
Id: jp-condition-ccs
Title: "SEAMAT PCI Condiiton Profile"
Description: "このプロファイルはConditionリソースに対して、心カテレポートのPCI合併症、併存疾患情報、冠危険因子、循環器疾患既往歴を送受信するための基礎となる制約と拡張を定めたものである。"
* ^url = $JP_Condition_CCS
* ^status = #active
* ^date = "2024-05-08"
* meta.lastUpdated 1.. MS
* meta.profile 1.. MS

* obeys condition-ccs-metaprofile

* identifier 0.. MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains 
     resourceId 1..1
* identifier[resourceId] ^definition = "Unique instance identifiers assigned to a device by manufacturers other organizations or owners."
* identifier[resourceId].system = $resource_identifier (exactly)
* identifier[resourceId].value 1..1 MS

* clinicalStatus ^definition = "The clinical status of the condition.\r\n\r\nこの患者状態の臨床的ステータス（アクティブか否かなど）"
* clinicalStatus.coding ^slicing.discriminator.type = #value
* clinicalStatus.coding ^slicing.discriminator.path = "system"
* clinicalStatus.coding ^slicing.rules = #open
* clinicalStatus.coding ^slicing.ordered = false
* clinicalStatus.coding contains
    result 0..1
* clinicalStatus.coding[result] from $JP_Condition_PCIClinicalStatus_VS (required)
* clinicalStatus.coding[result].system = $LOINC (exactly)
* clinicalStatus.coding[result].code 1..
* clinicalStatus.coding[result] ^short = "PCI合併症、併存疾患情報、冠危険因子、循環器疾患既往歴等の有無。【詳細参照】"
* clinicalStatus.coding[result] ^definition = "PCI合併症、併存疾患情報、冠危険因子、循環器疾患既往歴等の有無。\r\n【CDA項目】PCI合併症の場合、78936-2<PCI合併症の有無>の値を変換する。"
* clinicalStatus.coding[result] ^comment = "JP_Condition_PCIClinicalStatus_VSの中から適切なコードを指定する。"

* code ^short = "PCI合併症、併存疾患情報、冠危険因子、循環器疾患既往歴等の識別コード。【詳細参照】"
* code ^definition = "PCI合併症、併存疾患情報、循環器疾患既往歴等の識別コード。"
* code ^comment = "JP_Condition_PCIConditionCode_VSの中から適切な識別コードを指定する"
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.ordered = false
* code.coding contains
    complication 0..1 and
    comorbidity 0..1 and
    riskFactor 0..1 and
    history 0..1

* code.coding[complication] from $JP_Condition_PCIComplicationType_VS (required)
* code.coding[complication].system = $LOINC (exactly)
* code.coding[complication].code 1..
* code.coding[complication] ^short = "PCI合併症種別コード。【詳細参照】"
* code.coding[complication] ^definition = "PCI合併症種別コード。\r\n【CDA項目】PCI合併症の場合、78937-0<PCI合併症>の値を使用する。"
* code.coding[complication] ^comment = "JP_Condition_PCIComplicationType_VSの中から適切なコードを指定する。"

* code.coding[comorbidity] from $JP_Condition_CCSComorbidityType_VS (required)
* code.coding[comorbidity].system = $LOINC (exactly)
* code.coding[comorbidity].code 1..
* code.coding[comorbidity] ^short = "並存疾患種別コード。【詳細参照】"
* code.coding[comorbidity] ^definition = "並存疾患種別コード。"
* code.coding[comorbidity] ^comment = "JP_Condition_CCSComorbidityType_VSの中から適切なコードを指定する。"

* code.coding[riskFactor] from $JP_Condition_CCSCoronaryRiskFactorType_VS (required)
* code.coding[riskFactor].system = $LOINC (exactly)
* code.coding[riskFactor].code 1..
* code.coding[riskFactor] ^short = "冠危険因子種別コード。【詳細参照】"
* code.coding[riskFactor] ^definition = "冠危険因子種別コード。"
* code.coding[riskFactor] ^comment = "JP_Condition_PCICoronaryRiskFactorType_VSの中から適切なコードを指定する。"

* code.coding[history] from $JP_Condition_CCSCoronaryRiskFactorType_VS (required)
* code.coding[history].system = $LOINC (exactly)
* code.coding[history].code 1..
* code.coding[history] ^short = "循環器疾患既往歴種別コード。【詳細参照】"
* code.coding[history] ^definition = "循環器疾患既往歴種別コード。"
* code.coding[history] ^comment = "JP_Condition_PCICoronaryRiskFactorType_VSの中から適切なコードを指定する。"
