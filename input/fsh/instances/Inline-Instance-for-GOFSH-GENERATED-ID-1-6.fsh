Instance: Inline-Instance-for-GOFSH-GENERATED-ID-1-6
InstanceOf: Procedure
Usage: #inline
* meta.lastUpdated = "2023-12-25T20:21:32+09:00"
* meta.profile = "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Procedure_SEAMAT"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "http://jpfhir.jp/fhir/SEAMAT/IdSystem/placer-order-no"
* identifier[=].value = "14239"
* identifier[+].type = $v2-0203#FILL "Filler Identifier"
* identifier[=].system = "http://jpfhir.jp/fhir/SEAMAT/IdSystem/filler-order-no"
* identifier[=].value = "1002"
* identifier[+].system = "http://jpfhir.jp/fhir/SEAMAT/IdSystem/filler-data-no"
* identifier[=].value = "94"
* identifier[+].system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier[=].value = "1234567890_20231205_LJCS-100D_20231205101112.94.14239.1002_20231205112233_200_1"
* status = #completed
* category = $JP_Procedure_SEAMAT_Category_CS#LJCS-100D "心電図検査データ"
* subject = Reference(urn:uuid:77fbc1a7-8e7e-494c-9763-6545a73afcc4)
* performedDateTime = "2023-12-05"
* performer.actor = Reference(urn:uuid:91278474-489b-48b9-a81b-62a84529a1fe)