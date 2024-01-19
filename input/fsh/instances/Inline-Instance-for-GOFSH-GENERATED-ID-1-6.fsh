Instance: Inline-Instance-for-GOFSH-GENERATED-ID-1-6
InstanceOf: Procedure
Usage: #inline
* meta.lastUpdated = "2024-01-19T09:08:02+09:00"
* meta.profile = "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Procedure_SEAMAT"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "http://jpfhir.jp/fhir/SEAMAT/IdSystem/placer-order-no"
* identifier[=].value = "14239"
* identifier[+].type = $v2-0203#FILL "Filler Identifier"
* identifier[=].system = "http://jpfhir.jp/fhir/SEAMAT/IdSystem/filler-order-no"
* identifier[=].value = "1002"
* identifier[+].system = "http://jpfhir.jp/fhir/SEAMAT/IdSystem/filler-data-no"
* identifier[=].value = "1002^94"
* status = #completed
* category = $JP_Procedure_SEAMAT_Category_CS#LJCS-100D "心電図検査データ"
* subject = Reference(urn:uuid:2d0c015f-abff-45d7-bf59-b18885a1cd53)
* performedDateTime = "2023-12-05"
* performer.actor = Reference(urn:uuid:d0e00509-ad36-43b2-ba39-2ede498d2da6)