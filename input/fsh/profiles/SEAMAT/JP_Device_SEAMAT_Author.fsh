Invariant: device-author-metaprofile
Description: "meta.profileには、指定したプロファイルのURLの記述が存在しなければならない。"
Severity: #error
Expression: "meta.profile.where($this = 'http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Device_SEAMAT_Author').exists()"

// ==============================
//   Profile 定義
// ==============================
Profile: JP_Device_SEAMAT_Author
Parent: Device
Id: jp-device-seamat-author
Title: "SEAMAT Common Author Device Profile"
Description: "このプロファイルはDeviceリソースに対して、SEAMAT共通の作成システムのデータを送受信するための基礎となる制約と拡張を定めたものである。"
* ^url = $JP_Device_SEAMAT_Author
* ^status = #active
* ^date = "2023-11-13"
* meta.lastUpdated 1.. MS
* meta.profile 1.. MS
//* meta.profile = $JP_Device_SEAMAT_Author

* obeys device-author-metaprofile

* identifier 0.. MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains 
     resourceId 0..1
// and bundleId 1..1 MS

* identifier[resourceId] ^definition = "Unique instance identifiers assigned to a device by manufacturers other organizations or owners.\r\n
【CDA項目】/ClinicalDocument/author/assignedAuthor/id"
* identifier[resourceId].system = $resource_identifier (exactly)
* identifier[resourceId].value 1..1 MS

// * identifier[bundleId] ^short = "文書Bundleの固定識別番号。"
// * identifier[bundleId] ^definition = "文書Bundleの固定識別番号。Bundle.identifier と同じ値を指定する。"
// * identifier[bundleId].system = $document_identifier (exactly)
// * identifier[bundleId].value 1..1 MS

//* definition ..0
//* udiCarrier ..0
* status = #active (exactly)
//* distinctIdentifier ..0
* manufacturer 1.. MS
* manufacturer ^definition = "A name of the manufacturer.\r\n
【CDA項目】/ClinicalDocument/author/assignedAuthor/representedOrganization/name"
//* manufactureDate ..0
//* expirationDate ..0
//* lotNumber ..0
//* serialNumber ..0
* deviceName ^slicing.discriminator.type = #value
* deviceName ^slicing.discriminator.path = "type"
* deviceName ^slicing.rules = #open
* deviceName contains
    modelName 0..1 MS and
    softwareName 0..1 MS

* deviceName[modelName].name ^short = "作成システムのモデル名"
* deviceName[modelName].name ^definition = "作成システムのモデル名\r\n
【CDA項目】/ClinicalDocument/author/assignedAuthor/assignedAuthoringDevice/manufacturerModelName"
* deviceName[modelName].type = #model-name (exactly)

* deviceName[softwareName].name ^short = "作成システムのソフトウエア名"
* deviceName[softwareName].name ^definition = "作成システムのソフトウエア名\r\n
【CDA項目】/ClinicalDocument/author/assignedAuthor/assignedAuthoringDevice/softwareName"
* deviceName[softwareName].type = #other (exactly)

//* modelNumber ..0
//* partNumber ..0
//* type ..0
//* specialization ..0
//* version ..0
//* property ..0
//* patient ..0
//* owner ..0
//* contact ..0
//* location ..0
//* url ..0
//* note ..0
//* safety ..0
//* parent ..0
