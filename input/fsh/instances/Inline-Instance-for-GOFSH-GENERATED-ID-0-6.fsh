Instance: Inline-Instance-for-GOFSH-GENERATED-ID-0-6
InstanceOf: Procedure
Usage: #inline
* meta.lastUpdated = "2023-12-08T13:44:06+09:00"
* meta.profile = "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Procedure_SEAMAT"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "http://jpfhir.jp/fhir/SEAMAT/IdSystem/placer-order-no"
* identifier[+].type = $v2-0203#FILL "Filler Identifier"
* identifier[=].system = "http://jpfhir.jp/fhir/SEAMAT/IdSystem/filler-order-no"
* identifier[=].value = "1002"
* identifier[+].system = "http://jpfhir.jp/fhir/SEAMAT/IdSystem/filler-data-no"
* identifier[+].system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier[=].value = "1234567890_20231205_LJCS-100D_20231205101112...1002_20231205112233_100_1"
* status = #completed
* category = $JP_Procedure_SEAMAT_Category_CS#LJCS-100D "心電図検査データ"
* subject = Reference(urn:uuid:308717bd-34a0-459f-9a1a-88367ab1e92c)
* performedDateTime = "2023-12-05"
* performer.actor = Reference(urn:uuid:f27ead5d-37ff-4759-91f1-11a3fd20d0c5)