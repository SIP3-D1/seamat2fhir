// ==============================
//   Profile 定義
// ==============================
Profile: JP_DocumentReference_SEAMAT
Parent: JP_DocumentReference
Id: jp-documentreference-seamat
Title: "SEAMAT Common DocumentReference Profile"
Description: "このプロファイルはDocumentReferenceリソースに対して、SEAMAT共通の外部参照のドキュメントデータを送受信するための共通の制約と拡張を定めたものである。"
* ^url = $JP_DocumentReference_SEAMAT
* ^status = #active
* ^date = "2023-11-13"
* meta.lastUpdated 1.. MS
* meta.profile 1.. MS
//* meta.profile = $JP_DocumentReference_SEAMAT

* masterIdentifier ..0
* identifier ..0
* status = #current (exactly)
* docStatus = #final (exactly)
* type 0..1 MS
* type ^definition = "Specifies the particular kind of document referenced (e.g. History and Physical, Discharge Summary, Progress Note). This usually equates to the purpose of making the document referenced.\r\n
【CDA項目】/ClinicalDocument/component/structuredBody/component/section/entry/observation/code"

* category ..0
* subject only Reference(JP_Patient_SEAMAT)
* date ..0
* author ..0
* authenticator ..0
* custodian ..0
* relatesTo ..0
* description ..0
* securityLabel ..0

* content.attachment.contentType 0..1 MS
* content.attachment.contentType ^definition = "Mime type of the content, with charset etc.\r\n
【CDA項目】/ClinicalDocument/component/structuredBody/component/section/entry/observation/reference/externalDocument/text/@mediaType"

* content.attachment.data 1..1 MS

* content.attachment.url 0..1 MS
* content.attachment.url ^definition = "Uri where the data can be found\r\n
【CDA項目】/ClinicalDocument/component/structuredBody/component/section/entry/observation/reference/externalDocument/reference/@value"

* content.attachment.hash 0..1 MS
* content.attachment.hash ^definition = "Hash of the data (sha-1, base64ed)\r\n
【CDA項目】/ClinicalDocument/component/structuredBody/component/section/entry/observation/reference/externalDocument/text/@integrityCheck"

* content.format 0..1 MS
* content.format ^definition = "An identifier of the document encoding, structure, and template that the document conforms to beyond the base format indicated in the mimeType.\r\n
【CDA項目】/ClinicalDocument/component/structuredBody/component/section/entry/observation/reference/externalDocument/code"

* context ..0
