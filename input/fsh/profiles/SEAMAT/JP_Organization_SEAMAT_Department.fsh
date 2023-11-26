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
