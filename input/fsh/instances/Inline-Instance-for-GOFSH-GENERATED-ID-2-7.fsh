Instance: Inline-Instance-for-GOFSH-GENERATED-ID-2-7
InstanceOf: Procedure
Usage: #inline
* meta.lastUpdated = "2024-04-12T11:07:58+09:00"
* meta.profile = "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Procedure_SEAMAT"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "http://jpfhir.jp/fhir/SEAMAT/IdSystem/placer-order-no"
* identifier[=].value = "2024011417332568"
* identifier[+].type = $v2-0203#FILL "Filler Identifier"
* identifier[=].system = "http://jpfhir.jp/fhir/SEAMAT/IdSystem/filler-order-no"
* identifier[=].value = "2024011417332568"
* identifier[+].system = "http://jpfhir.jp/fhir/SEAMAT/IdSystem/filler-data-no"
* identifier[=].value = "2024011417332568^0227990001"
* status = #completed
* category = $JP_Procedure_SEAMAT_Category_CS#LJCS-300R "心臓カテーテル検査レポート"
* subject = Reference(urn:uuid:86dc9b33-d9ab-4fa8-8bef-9df157efe574)
* performedDateTime = "2024-01-15"
* performer[0].actor = Reference(urn:uuid:55f4bbd7-f5f9-4b09-a1e8-e529f568698d)
* performer[+].actor = Reference(urn:uuid:edc1b1b9-0b61-4925-86e7-57aca7a07191)
* performer[+].actor = Reference(urn:uuid:bdbf2407-47a7-43a0-b4d0-87cd7463aca6)