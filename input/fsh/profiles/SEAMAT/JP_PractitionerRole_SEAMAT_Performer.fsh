// ==============================
//   Profile 定義
// ==============================
Profile: JP_PractitionerRole_SEAMAT_Performer
Parent: JP_PractitionerRole
Id: jp-practitionerrole-seamat-performer
Title: "SEAMAT Common Performer PractitionerRole Profile"
Description: "このプロファイルはPractitionerRoleリソースに対して、SEAMAT共通の検査実施者の役割データを送受信するための基礎となる制約と拡張を定めたものである。"
* ^url = $JP_PractitionerRole_SEAMAT_Performer
* ^status = #active
* ^date = "2023-11-13"
* meta.lastUpdated 1.. MS
* meta.profile 1.. MS
//* meta.profile = $JP_PractitionerRole_SEAMAT_Performer

* identifier 2.. MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains 
     resourceId 1..1 MS
 and bundleId 1..1 MS

* identifier[resourceId] 1..1 MS
* identifier[resourceId] ^short = "役割/場所に固有のビジネス識別子" 
* identifier[resourceId] ^definition = "役割/場所に固有のビジネス識別子。"
* identifier[resourceId].system 1.. MS
* identifier[resourceId].system $resource_identifier (exactly)
* identifier[resourceId].value 1.. MS

* identifier[bundleId] 1..1 MS
* identifier[bundleId] ^short = "文書Bundleの固定識別番号。"
* identifier[bundleId] ^definition = "文書Bundleの固定識別番号。Bundle.identifier と同じ値を指定する。"
* identifier[bundleId].system 1.. MS
* identifier[bundleId].system $document_identifier (exactly)
* identifier[bundleId].value 1.. MS

* active = true (exactly)

* period ..1 MS
* period ^definition = "The period during which the person is authorized to act as a practitioner in these role(s) for the organization.\r\n\r\nその人が、組織のためにこれらの役割（複数可）の医療従事者として行動することを許可されている期間。\r\n
【CDA項目】/ClinicalDocument/documentationOf/serviceEvent/effectiveTime"

* practitioner ..1 MS
* practitioner only Reference(JP_Practitioner_SEAMAT_Performer)
* practitioner ^definition = "Practitioner that is able to provide the defined services for the organization.\r\n\r\n組織に定義されたサービスを提供できる医療従事者。\r\n
【CDA項目】/ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity"

* organization ..0

* code ..1 MS
* code from $participation-function (required)
* code ^definition = "Roles which this practitioner is authorized to perform for the organization.\r\n\r\nこの医療従事者が組織のために実行することを許可されている役割。\r\n
【CDA項目】/ClinicalDocument/documentationOf/serviceEvent/performer/functionCode"

* specialty ..0
* location ..0
* healthcareService ..0
* telecom ..0
* availableTime ..0
* notAvailable ..0
* availabilityExceptions ..0
* endpoint ..0
