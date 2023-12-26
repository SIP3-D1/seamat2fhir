Instance: Inline-Instance-for-GOFSH-GENERATED-ID-0-13
InstanceOf: Observation
Usage: #inline
* meta.lastUpdated = "2023-12-08T13:44:06+09:00"
* meta.profile = "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Observation_SEAMAT"
* identifier[0].system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier[=].value = "1234567890_20231205_LJCS-100D_20231205101112...1002_20231205112233_100_1.4"
* identifier[+].system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier[=].value = "1234567890_20231205_LJCS-100D_20231205101112...1002_20231205112233_100_1"
* status = #final
* code = $loinc#18684-1 "Blood pressure"
* subject = Reference(urn:uuid:308717bd-34a0-459f-9a1a-88367ab1e92c)
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].dataAbsentReason = $data-absent-reason#unknown "Unknown"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].dataAbsentReason = $data-absent-reason#unknown "Unknown"