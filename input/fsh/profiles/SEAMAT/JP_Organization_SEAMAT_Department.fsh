// ==============================
//   Profile 定義
// ==============================
Profile: JP_Organization_SEAMAT_Department
Parent: JP_Organization
Id: jp-organization-seamat-department
Title: "SEAMAT Common Department Organization Profile"
Description: "このプロファイルはOrganizationリソースに対して、SEAMAT共通の診療科情報のデータを送受信するための基礎となる制約と拡張を定めたものである。"
* ^url = $JP_Organization_SEAMAT_Department
* ^status = #active
* ^date = "2023-11-12"
* meta.lastUpdated 1.. MS
* meta.profile 1.. MS
//* meta.profile = $JP_Organization_SEAMAT_Department

* identifier 2.. MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains 
     resourceId 1..1 MS
 and bundleId 1..1 MS

* identifier[resourceId] ^definition = "Identifier for the organization that is used to identify the organization across multiple disparate systems.\r\n\r\n複数の異種システムにまたがって組織を識別するための識別子"
* identifier[resourceId].system = $resource_identifier (exactly)
* identifier[resourceId].value 1..1 MS

* identifier[bundleId] ^short = "文書Bundleの固定識別番号。"
* identifier[bundleId] ^definition = "文書Bundleの固定識別番号。Bundle.identifier と同じ値を指定する。"
* identifier[bundleId].system = $document_identifier (exactly)
* identifier[bundleId].value 1..1 MS

* active = true (exactly)

* type.coding.system = $organization-type (exactly)
* type.coding.code = #dept (exactly)
* type.coding.display = "Hospital Department" (exactly)

* name ^definition = "A name associated with the organization.\r\n\r\n組織に関連付けられた名前。\r\n
【CDA項目】/ClinicalDocument/recordTarget/patientRole/providerOrganization/name"

* alias ..0
* telecom ..0
* address ..0
* partOf ..0
* endpoint ..0
