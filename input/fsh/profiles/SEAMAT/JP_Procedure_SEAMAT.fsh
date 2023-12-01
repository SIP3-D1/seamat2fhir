// ==============================
//   Profile 定義
// ==============================
Profile: JP_Procedure_SEAMAT
Parent: JP_Procedure
Id: jp-procedure-seamat
Title: "SEAMAT Common Procedure Profile"
Description: "このプロファイルはProcedureリソースに対して、検査実施データを送受信するための共通の制約と拡張を定めたものである。"
* ^url = $JP_Procedure_SEAMAT
* ^status = #active
* ^date = "2023-11-13"
* meta.lastUpdated 1.. MS
* meta.profile 1.. MS
//* meta.profile = $JP_Procedure_SEAMAT

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
        resourceId 1..1 MS
    and placerOrderNo 1..1 MS    // オーダ番号
    and fillerOrderNo 1..1 MS    // 部門管理番号
    and fillerDataNo 1..1 MS     // データ管理番号
    and bundleId 1..1 MS

* identifier[resourceId] ^short = "External Identifiers for this procedure" 
* identifier[resourceId] ^definition = "これは、ビジネスプロセスによって定義され、リソース自体への直接のURL参照が適切でない場合に参照するために使用される、このProcedureに関連する識別子を記録する。"
* identifier[resourceId].system = $resource_identifier (exactly)
* identifier[resourceId].value 1..1 MS

* identifier[placerOrderNo].type.coding.system = $v2-0203 (exactly)
* identifier[placerOrderNo].type.coding.code = #PLAC (exactly)
* identifier[placerOrderNo].type.coding.display = "Placer Identifier" (exactly)
* identifier[placerOrderNo].system = $JP_Procedure_SEAMAT_Placer_OrderNo (exactly)
* identifier[placerOrderNo].value ^short = "<オーダ番号>"
* identifier[placerOrderNo].value ^definition = "SS-MIX2拡張ストレージのコンテンツフォルダ名の特定キーに含まれる<オーダ番号>をセットする。"

* identifier[fillerOrderNo].type.coding.system = $v2-0203 (exactly)
* identifier[fillerOrderNo].type.coding.code = #FILL (exactly)
* identifier[fillerOrderNo].type.coding.display = "Filler Identifier" (exactly)
* identifier[fillerOrderNo].system = $JP_Procedure_SEAMAT_Filler_OrderNo (exactly)
* identifier[fillerOrderNo].value ^short = "<部門管理番号>"
* identifier[fillerOrderNo].value ^definition = "SS-MIX2拡張ストレージのコンテンツフォルダ名の特定キーに含まれる<部門管理番号>をセットする。"

//* identifer[fillerDataNo].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
//* identifer[fillerDataNo].type.coding.code = #FILL (exactly)
//* identifer[fillerDataNo].type.coding.display = "Filler Identifier" (exactly)
* identifier[fillerDataNo].system = $JP_Procedure_SEAMAT_Filler_DataNo
* identifier[fillerDataNo].value ^short = "<データ管理番号>"
* identifier[fillerDataNo].value ^definition = "SS-MIX2拡張ストレージのコンテンツフォルダ名の特定キーに含まれる<データ管理番号>をセットする。"

* identifier[bundleId] ^short = "文書Bundleの固定識別番号。"
* identifier[bundleId] ^definition = "文書Bundleの固定識別番号。Bundle.identifier と同じ値を指定する。"
* identifier[bundleId].system = $document_identifier (exactly)
* identifier[bundleId].value 1..1 MS

* instantiatesUri ..0
* basedOn ..0
* partOf ..0
* status = #completed (exactly)
* statusReason ..0

//* category ^short = "Classification of the procedure. このプロシジャーの分類カテゴリ"
//* category ^slicing.discriminator.type = #value
//* category ^slicing.discriminator.path = "coding.system"
//* category ^slicing.rules = #open
//* category contains
//        dataType 1..1 MS    // データ種別コード
//    and dataSubType 1..1 MS // レポート/データフラグ
//
//* category[dataType].coding.system = "http://jpfhir.jp/fhir/SEAMAT/CodeSystem/JP_Procedure_Category_SEAMAT_DataType_CS" (exactly)
//* category[dataType].coding.code ^short = "<データ種別コード>"
//* category[dataType].coding.code ^definition = "SS-MIX2拡張ストレージのコンテンツフォルダ名のデータ種別に含まれる<データ種別コード>をセットする。"
//
//* category[dataSubType].coding.system = "http://jpfhir.jp/fhir/SEAMAT/CodeSystem/JP_Procedure_Category_SEAMAT_DataSubType_CS" (exactly)
//* category[dataSubType].coding.code ^short = "<レポート/データフラグ>"
//* category[dataSubType].coding.code ^definition = "SS-MIX2拡張ストレージのコンテンツフォルダ名のデータ種別に含まれる<レポート/データフラグ>をセットする。"

* category 1..1 MS
* category from $JP_Procedure_EKGReport_Category_VS
* category.coding.system = $JP_Procedure_SEAMAT_Category_CS (exactly)
* category.coding.code ^short = "<データ種別コード><レポート/データフラグ>"
* category.coding.code ^definition = "SS-MIX2拡張ストレージのコンテンツフォルダ名のデータ種別に含まれる<データ種別コード><レポート/データフラグ>をセットする。\r\n例：LJCS-100D"
* category.coding.display ^short = "<データ種別コード><レポート/データフラグ>に対する名称"
* category.coding.display ^definition = "SS-MIX2拡張ストレージのコンテンツフォルダ名のデータ種別に含まれる<データ種別コード><レポート/データフラグ>に対する名称を合成したテキストをセットする。\r\n例：心電図検査データ"

* code ..0
* subject only Reference(JP_Patient_SEAMAT)
* encounter ..0

* performed[x] 1..1 MS
* performed[x] only dateTime
* performedDateTime ^short = "<検査日>"
* performedDateTime ^definition = "SS-MIX2拡張ストレージのコンテンツフォルダ名の診療日に含まれる<検査日>をセットする。"

* recorder ..0
* asserter ..0

* performer.function ..0
* performer.actor only Reference(JP_PractitionerRole_SEAMAT_Performer)
* performer.onBehalfOf ..0

* location ..0
* reasonCode ..0
* reasonReference ..0
* bodySite ..0
* outcome ..0
* report ..0
* complication ..0
* complicationDetail ..0
* followUp ..0
* note ..0
* focalDevice ..0
* usedReference ..0
* usedCode ..0
