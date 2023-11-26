// ==============================
//   Profile 定義
// ==============================
Profile: JP_Practitioner_SEAMAT_Measurer
Parent: JP_Practitioner
Id: jp-practitioner-seamat-measurer
Title: "SEAMAT Common Measurer Practitioner Profile"
Description: "このプロファイルはPractitionerリソースに対して、SEAMAT共通の測定者のデータを送受信するための基礎となる制約と拡張を定めたものである。"
* ^url = $JP_Practitioner_SEAMAT_Measurer
* ^status = #active
* ^date = "2023-11-12"
* meta.lastUpdated 1.. MS
* meta.profile 1.. MS
//* meta.profile = $JP_Practitioner_SEAMAT_Measurer

* identifier ^definition = "An identifier that applies to this person in this role.\r\n\r\nある役割の人に適用される識別子。\r\n
【CDA項目】/ClinicalDocument/component/structuredBody/component/section/author/assignedAuthor/id"

* active = true (exactly)

* name 1.. MS
* name ^definition = "The name(s) associated with the practitioner.\r\n\r\n医療従事者の氏名（複数の場合もある）\r\n
【CDA項目】/ClinicalDocument/component/structuredBody/component/section/author/assignedAuthor/assignedPerson/name"

* telecom 0..1 MS
* telecom ^definition = "A contact detail for the practitioner, e.g. a telephone number or an email address.\r\n\r\n電話番号やメールアドレスなど、従事者への詳細な連絡先。\r\n
【CDA項目】/ClinicalDocument/component/structuredBody/component/section/author/assignedAuthor/telecom"

* address 0..1 MS
* address ^definition = "Address(es) of the practitioner that are not role specific (typically home address). \rWork addresses are not typically entered in this property as they are usually role dependent.\r\n\r\n役割が特定されていない従事者の住所（通常は自宅の住所）。\r\n勤務先の住所は通常、役割に依存するため、このプロパティには入力されない。\r\n
【CDA項目】/ClinicalDocument/component/structuredBody/component/section/author/assignedAuthor/addr"
/*
* gender ..0
* birthDate ..0
* photo ..0
* qualification ..0
* communication ..0
*/