Invariant: binary-metaprofile
Description: "meta.profileには、指定したプロファイルのURLの記述が存在しなければならない。"
Severity: #error
Expression: "meta.profile.where($this = 'http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Binary_SEAMAT').exists()"

// ==============================
//   Profile 定義
// ==============================
Profile: JP_Binary_SEAMAT
Parent: JP_Binary
Id: jp-binary-seamat
Title: "SEAMAT Common Binary Profile"
Description: "このプロファイルはBinaryリソースに対して、外部参照のバイナリデータを送受信するための共通の制約と拡張を定めたものである。"
* ^url = $JP_Binary_SEAMAT
* ^status = #active
* ^date = "2023-11-13"
* meta.lastUpdated 1.. MS
* meta.profile 1.. MS
//* meta.profile = $JP_Binary_SEAMAT

* obeys binary-metaprofile

* contentType 1..1 MS
* contentType ^definition = "MimeType of the binary content represented as a standard MimeType (BCP 13).\r\n
【CDA項目】/ClinicalDocument/component/structuredBody/component/section/entry/observationMedia/value/@mediaType"

* securityContext ..0

* data 1..1 MS
* data ^definition = "The actual content, base64 encoded.\r\n
【CDA項目】/ClinicalDocument/component/structuredBody/component/section/entry/observationMedia/value/@representation"
