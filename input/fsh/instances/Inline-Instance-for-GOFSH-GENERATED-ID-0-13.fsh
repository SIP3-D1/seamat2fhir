Instance: Inline-Instance-for-GOFSH-GENERATED-ID-0-13
InstanceOf: Observation
Usage: #inline
* meta.lastUpdated = "2023-12-25T17:49:16+09:00"
* meta.profile = "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Observation_SEAMAT"
* identifier[0].system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier[=].value = "1234567890_20231205_LJCS-100D_20231205101112.94.14239.1002_20231205112233_200_1.4"
* identifier[+].system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier[=].value = "1234567890_20231205_LJCS-100D_20231205101112.94.14239.1002_20231205112233_200_1"
* status = #final
* category = $JP_SimpleObservationCategory_CS#physiological-test "Physiological Test"
* code = $loinc#18684-1 "Blood pressure"
* subject = Reference(urn:uuid:a1b72bfd-61a3-4b64-8dda-99d19f546f02)
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].dataAbsentReason = $data-absent-reason#unknown "Unknown"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].dataAbsentReason = $data-absent-reason#unknown "Unknown"