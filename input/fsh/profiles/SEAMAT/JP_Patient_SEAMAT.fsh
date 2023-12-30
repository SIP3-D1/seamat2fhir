Invariant: patient-metaprofile
Description: "meta.profileには、指定したプロファイルのURLの記述が存在しなければならない。"
Severity: #error
Expression: "meta.profile.where($this = 'http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Patient_SEAMAT').exists()"

// ==============================
//   Profile 定義
// ==============================
Profile: JP_Patient_SEAMAT
Parent: JP_Patient
Id: jp-patient-seamat
Title: "SEAMAT Common Patient Profile"
Description: "このプロファイルはPatientリソースに対して、SEAMAT共通の患者のデータを送受信するための基礎となる制約と拡張を定めたものである。"
* ^url = $JP_Patient_SEAMAT
* ^status = #active
* ^date = "2023-11-12"
* meta.lastUpdated 1.. MS
* meta.profile 1.. MS
//* meta.profile = $JP_Patient_SEAMAT

* obeys patient-metaprofile

* identifier 2.. MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains 
     resourceId 1..1 MS
 and bundleId 1..1 MS

* identifier[resourceId] ^short = "An identifier for this patient" 
* identifier[resourceId] ^definition = "An identifier for this patient.\r\n\r\nこの患者の識別子。\r\n
【CDA項目】/ClinicalDocument/recordTarget/patientRole/id"
* identifier[resourceId].system = $resource_identifier (exactly)
* identifier[resourceId].value 1..1 MS

* identifier[bundleId] ^short = "文書Bundleの固定識別番号。"
* identifier[bundleId] ^definition = "文書Bundleの固定識別番号。Bundle.identifier と同じ値を指定する。"
* identifier[bundleId].system = $document_identifier (exactly)
* identifier[bundleId].value 1..1 MS

* active = true (exactly)

* name ^definition = "A name associated with the individual.\r\n\r\n個人に関連付けられた名前。\r\n
【CDA項目】/ClinicalDocument/recordTarget/patientRole/patient/name"

* telecom ^definition = "A contact detail (e.g. a telephone number or an email address) by which the individual may be contacted.\r\n\r\n個人に連絡するための連絡先の詳細（電話番号や電子メールアドレスなど）。\r\n
【CDA項目】/ClinicalDocument/recordTarget/patientRole/telecom"

* gender ^definition = "Administrative Gender - the gender that the patient is considered to have for administration and record keeping purposes.\r\n管理上の性別-患者が管理および記録管理の目的で持つと見なされる性別。\r\n
【CDA項目】/ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode"

* birthDate ^definition = "The date of birth for the individual.\r\n個人の生年月日\r\n
【CDA項目】/ClinicalDocument/recordTarget/patientRole/patient/birthTime"

*  deceased[x] ..0

* address ^definition = "An address for the individual.\r\n個人の住所。\r\n
【CDA項目】/ClinicalDocument/recordTarget/patientRole/address"

* maritalStatus ..0
* multipleBirth[x] ..0
* photo ..0

* contact.relationship ..0
* contact.name ..0
* contact.telecom ..0
* contact.gender ..0
* contact.organization only Reference(JP_Organization_SEAMAT_Department)
* contact.organization ^definition = "Organization on behalf of which the contact is acting or for which the contact is working.\r\n連絡先が主として活動する、または勤務している組織。\r\n
【CDA項目】/ClinicalDocument/recordTarget/patientRole/providerOrganization"
* contact.period ..0

* link ..0
