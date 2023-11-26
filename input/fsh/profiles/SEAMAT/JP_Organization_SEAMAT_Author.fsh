// ==============================
//   Profile 定義
// ==============================
Profile: JP_Organization_SEAMAT_Author
Parent: JP_Organization
Id: jp-organization-seamat-author
Title: "SEAMAT Common Author Organization Profile"
Description: "このプロファイルはOrganizationリソースに対して、SEAMAT共通の作成医療機関のデータを送受信するための基礎となる制約と拡張を定めたものである。"
* ^url = $JP_Organization_SEAMAT_Author
* ^status = #active
* ^date = "2023-11-13"
* meta.lastUpdated 1.. MS
* meta.profile 1.. MS
* meta.profile = $JP_Organization_SEAMAT_Author

//* identifier ^short = "Identifies this organization  across multiple systems/複数のシステムでこの組織を識別【詳細参照】"
* identifier ^definition = "Identifier for the organization that is used to identify the organization across multiple disparate systems.\r\n\r\n複数の異種システムにまたがって組織を識別するための識別子\r\n
【CDA項目】/ClinicalDocument/author/assignedAuthor/representedOrganization/id"

* active = true (exactly)

* type.coding.system = $organization-type (exactly)
* type.coding.code = #prov (exactly)
* type.coding.display = "Healthcare Provider" (exactly)

* name ^definition = "A name associated with the organization.\r\n\r\n組織に関連付けられた名前。\r\n
【CDA項目】/ClinicalDocument/author/assignedAuthor/representedOrganization/name"

* alias ..0

* telecom 0..1 MS
* telecom ^definition = "A contact detail for the organization.\r\n\r\n組織の連絡先詳細\r\n
【CDA項目】/ClinicalDocument/author/assignedAuthor/representedOrganization/telecom"

* address 0..1 MS
* address ^definition = "An address for the organization.\r\n\r\n組織の住所\r\n
【CDA項目】/ClinicalDocument/author/assignedAuthor/representedOrganization/addr"

* partOf 0..1 MS
* partOf ^definition = "The organization of which this organization forms a part.\r\nこの組織が一部を構成する組織\r\n
【CDA項目】/ClinicalDocument/author/assignedAuthor/representedOrganization/asOrganizationPartOf/id"

* endpoint ..0
