Invariant: procedure-pci-metaprofile
Description: "meta.profileには、指定したプロファイルのURLの記述が存在しなければならない。"
Severity: #error
Expression: "meta.profile.where($this = 'http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Procedure_PCI').exists()"

// ==============================
//   Profile 定義
// ==============================
Profile: JP_Procedure_PCI
Parent: JP_Procedure
Id: jp-procedure-pci
Title: "SEAMAT PCI procedure Procedure Profile"
Description: "このプロファイルはProcedureリソースに対して、PCI処置の実施データを送受信するための共通の制約と拡張を定めたものである。"
* ^url = $JP_Procedure_PCI
* ^status = #active
* ^date = "2024-05-16"
* meta.lastUpdated 1.. MS
* meta.profile 1.. MS

* obeys procedure-pci-metaprofile

//* instantiatesUri ..0
//* basedOn ..0
//* partOf ..0
//* status = #completed (exactly)
* status ^definition = "PCI処置の実施状況\r\n【CDA項目】PCI処置の80727-1<実施有無>の値から変換する。"
//* statusReason ..0

* code 1..1 MS
* code.coding.system = $loinc (exactly)
* code.coding.code = #76642-8 (exactly)
* code.coding.display = "Percutaneous coronary intervention study" (exactly)

* subject only Reference(JP_Patient_SEAMAT)

//* performed
//* recorder ..0
//* asserter ..0

//* performer.function ..0
//* performer.actor ..0
//* performer.onBehalfOf ..0

// * location ..0
// * reasonCode ..0
// * reasonReference ..0
* reasonReference ^definition = "PCI処置前の状態\r\n【CDA項目】PCI処置の80728-9<Stenosis_Pre>,81000-2<TimiGrade_Pre>、80729-7<病変性状>、80730-5<病変分類>を記述したObservationをReference型で参照する。"
* reasonReference only Reference(JP_Observation_SEAMAT)

* bodySite ^definition = "PCI処置の実施部位\r\n【CDA項目】PCI処置の80999-6<部位>の値を使用する。"
* bodySite from $JP_Procedure_PCIBodySite_VS (preferred)

* outcome ^definition = "PCI処置の実施結果\r\n【CDA項目】PCI処置の67544-7<成否>の値を使用する。"
* outcome from $JP_Procedure_PCIOutcome_VS (preferred)
* outcome.extension ^slicing.discriminator.type = #value
* outcome.extension ^slicing.discriminator.path = "url"
* outcome.extension ^slicing.rules = #open
* outcome.extension contains
    JP_Procedure_PCIOutcomeDetail named outcomeDetail ..*
* outcome.extension[outcomeDetail] ^definition = "PCI処置後の状態\r\n【CDA項目】PCI処置の80239-7<Stenosis_Post>,81001-0<TimiGrade_Post>を記述したObservationをReference型で参照する"
// * report ..0
// * complication ..0
// * complicationDetail ..0
// * followUp ..0
// * note ..0
// * focalDevice ..0
* focalDevice.manipulated ^definition = "PCI処置の使用機器\r\n【CDA項目】PCI処置の81002-8<使用機器>を記述したDeviceリソースを参照する"
* focalDevice.manipulated only Reference(JP_Device_PCI)
// * usedReference ..0
// * usedCode ..0

// ==============================
//   Extension 定義
// ==============================
//-------------------------------
// JP_Procedure_PCIOutcomeDetail
//-------------------------------
Extension: JP_Procedure_PCIOutcomeDetail
Id: jp-procedure-pci-outcome-detail
Title: "SEAMAT PCI Outcome Detail Extension"
Description: "PCI処置のアウトカム詳細情報を記述するための拡張"
* ^url = $JP_Procedure_PCIOutcomeDetail
* ^status = #active
* ^date = "2024-05-08"
* ^context.type = #element
* ^context.expression = "Procedure.outcome"
* . ^short = "PCI処置アウトカム詳細"
* . ^definition = "PCI処置のアウトカム詳細情報を記述するための拡張。\r\n<Stenosis_Post>,<TimiGrade_Post>を記述したObservationリソースへの参照をReference型で記述する。"
* url = $JP_Procedure_PCIOutcomeDetail (exactly)
* value[x] only Reference(JP_Observation_SEAMAT)
* value[x] ^short = "Observationリソースへの参照"

