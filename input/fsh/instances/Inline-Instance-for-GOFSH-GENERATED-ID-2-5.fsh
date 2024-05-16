Instance: Inline-Instance-for-GOFSH-GENERATED-ID-2-5
InstanceOf: Procedure
Usage: #inline
* meta.lastUpdated = "2024-05-15T16:56:52+09:00"
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
* subject = Reference(urn:uuid:1eded11c-b3f3-4613-b94d-73095c366204)
* performedDateTime = "2024-01-15"
* performer[0].actor = Reference(urn:uuid:a2ab39a9-f10e-4be5-8e3f-7b7a6b7b1ed4)
* performer[+].actor = Reference(urn:uuid:40579af5-f873-474f-8578-93457c864a07)
* performer[+].actor = Reference(urn:uuid:265f0340-adf1-49db-a190-23f46d51c285)