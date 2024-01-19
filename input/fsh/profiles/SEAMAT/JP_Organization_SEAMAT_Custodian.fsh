Invariant: organization-custodian-metaprofile
Description: "meta.profileには、指定したプロファイルのURLの記述が存在しなければならない。"
Severity: #error
Expression: "meta.profile.where($this = 'http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Organization_SEAMAT_Custodian').exists()"

// ==============================
//   Profile 定義
// ==============================
Profile: JP_Organization_SEAMAT_Custodian
Parent: JP_Organization
Id: jp-organization-seamat-custodian
Title: "SEAMAT Common Custodian Organization Profile"
Description: "このプロファイルはOrganizationリソースに対して、SEAMAT共通の管理医療機関のデータを送受信するための基礎となる制約と拡張を定めたものである。"
* ^url = $JP_Organization_SEAMAT_Custodian
* ^status = #active
* ^date = "2023-11-13"
* meta.lastUpdated 1.. MS
* meta.profile 1.. MS
//* meta.profile = $JP_Organization_SEAMAT_Custodian

* obeys organization-custodian-metaprofile

//* identifier ^short = "Identifies this organization  across multiple systems/複数のシステムでこの組織を識別【詳細参照】"
* identifier 0.. MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains 
     resourceId 0..1 MS
// and bundleId 0..1 MS

* identifier[resourceId] ^definition = "Identifier for the organization that is used to identify the organization across multiple disparate systems.\r\n\r\n複数の異種システムにまたがって組織を識別するための識別子\r\n
【CDA項目】/ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/id"
* identifier[resourceId].system = $resource_identifier (exactly)
* identifier[resourceId].value 1..1 MS

// * identifier[bundleId] ^short = "文書Bundleの固定識別番号。"
// * identifier[bundleId] ^definition = "文書Bundleの固定識別番号。Bundle.identifier と同じ値を指定する。"
// * identifier[bundleId].system = $document_identifier (exactly)
// * identifier[bundleId].value 1..1 MS

* active = true (exactly)

* type.coding.system = $organization-type (exactly)
* type.coding.code = #prov (exactly)
* type.coding.display = "Healthcare Provider" (exactly)

* name ^definition = "A name associated with the organization.\r\n\r\n組織に関連付けられた名前。\r\n
【CDA項目】/ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/name"

//* alias ..0

//* telecom 0..1 MS
* telecom ^definition = "A contact detail for the organization.\r\n\r\n組織の連絡先詳細\r\n
【CDA項目】/ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/telecom"

//* address 0..1 MS
* address ^definition = "An address for the organization.\r\n\r\n組織の住所\r\n
【CDA項目】/ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/addr"

//* partOf ..0
//* endpoint ..0
