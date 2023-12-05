// ==============================
//   Profile 定義
// ==============================
Profile: JP_Practitioner_SEAMAT_Performer
Parent: JP_Practitioner
Id: jp-practitioner-seamat-performer
Title: "SEAMAT Common Performer Practitioner Profile"
Description: "このプロファイルはPractitionerリソースに対して、SEAMAT共通の検査実施者のデータを送受信するための基礎となる制約と拡張を定めたものである。"
* ^url = $JP_Practitioner_SEAMAT_Performer
* ^status = #active
* ^date = "2023-11-12"
* meta.lastUpdated 1.. MS
* meta.profile 1.. MS
* meta.profile = $JP_Practitioner_SEAMAT_Performer

* identifier 1.. MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains 
     resourceId 0..1 MS
 and bundleId 1..1 MS

* identifier[resourceId] ^short = "ある役割の人に適用される識別子。" 
* identifier[resourceId] ^definition = "An identifier that applies to this person in this role.\r\n\r\nある役割の人に適用される識別子。\r\n
【CDA項目】/ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/id"
* identifier[resourceId].system = $resource_identifier (exactly)
* identifier[resourceId].value 1..1 MS

* identifier[bundleId] ^short = "文書Bundleの固定識別番号。"
* identifier[bundleId] ^definition = "文書Bundleの固定識別番号。Bundle.identifier と同じ値を指定する。"
* identifier[bundleId].system = $document_identifier (exactly)
* identifier[bundleId].value 1..1 MS

* active = true (exactly)

* name 1.. MS
* name ^definition = "The name(s) associated with the practitioner.\r\n\r\n医療従事者の氏名（複数の場合もある）\r\n
【CDA項目】/ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/assignedPerson/name"

* telecom 0..1 MS
* telecom ^definition = "A contact detail for the practitioner, e.g. a telephone number or an email address.\r\n\r\n電話番号やメールアドレスなど、従事者への詳細な連絡先。\r\n
【CDA項目】/ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/telecom"

* address 0..1 MS
* address ^definition = "Address(es) of the practitioner that are not role specific (typically home address). \rWork addresses are not typically entered in this property as they are usually role dependent.\r\n\r\n役割が特定されていない従事者の住所（通常は自宅の住所）。\r\n勤務先の住所は通常、役割に依存するため、このプロパティには入力されない。\r\n
【CDA項目】/ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity/addr"
/*
* gender ..0
* birthDate ..0
* photo ..0
* qualification ..0
* communication ..0
*/