Invariant: documentreference-metaprofile
Description: "meta.profileには、指定したプロファイルのURLの記述が存在しなければならない。"
Severity: #error
Expression: "meta.profile.where($this = 'http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_DocumentReference_SEAMAT').exists()"

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

* obeys documentreference-metaprofile

* masterIdentifier ..0
* identifier 1.. MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains 
     resourceId 0..1 MS
// and bundleId 1..1 MS

* identifier[resourceId] ^definition = "Unique instance identifiers assigned to a device by manufacturers other organizations or owners."
* identifier[resourceId].system = $resource_identifier (exactly)
* identifier[resourceId].value 1..1 MS

// * identifier[bundleId] ^short = "文書Bundleの固定識別番号。"
// * identifier[bundleId] ^definition = "文書Bundleの固定識別番号。Bundle.identifier と同じ値を指定する。"
// * identifier[bundleId].system = $document_identifier (exactly)
// * identifier[bundleId].value 1..1 MS

* status = #current (exactly)
* docStatus = #final (exactly)
* type 0.. MS
* type ^definition = "Specifies the particular kind of document referenced (e.g. History and Physical, Discharge Summary, Progress Note). This usually equates to the purpose of making the document referenced.\r\n
【CDA項目】/ClinicalDocument/component/structuredBody/component/section/entry/observation/code"

//* category ..0
* subject only Reference(JP_Patient_SEAMAT)
//* date ..0
//* author ..0
//* authenticator ..0
//* custodian ..0
//* relatesTo ..0
//* description ..0
//* securityLabel ..0

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

//* context ..0
