Instance: Inline-Instance-for-GOFSH-GENERATED-ID-0-6
InstanceOf: Procedure
Usage: #inline
* meta.lastUpdated = "2024-01-19T09:08:27+09:00"
* meta.profile = "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Procedure_SEAMAT"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "http://jpfhir.jp/fhir/SEAMAT/IdSystem/placer-order-no"
* identifier[+].type = $v2-0203#FILL "Filler Identifier"
* identifier[=].system = "http://jpfhir.jp/fhir/SEAMAT/IdSystem/filler-order-no"
* identifier[=].value = "1002"
* identifier[+].system = "http://jpfhir.jp/fhir/SEAMAT/IdSystem/filler-data-no"
* identifier[=].value = "1002^"
* status = #completed
* category = $JP_Procedure_SEAMAT_Category_CS#LJCS-100D "心電図検査データ"
* subject = Reference(urn:uuid:6034704d-98d7-4fce-ba42-6954f265c5ab)
* performedDateTime = "2023-12-05"
* performer.actor = Reference(urn:uuid:f25dd63b-a331-4b09-bc22-b20035a662d1)