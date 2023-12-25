Instance: Inline-Instance-for-GOFSH-GENERATED-ID-0-24
InstanceOf: Observation
Usage: #inline
* meta.lastUpdated = "2023-12-25T17:49:16+09:00"
* meta.profile = "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Observation_SEAMAT"
* identifier[0].system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier[=].value = "1234567890_20231205_LJCS-100D_20231205101112.94.14239.1002_20231205112233_200_1.15"
* identifier[+].system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier[=].value = "1234567890_20231205_LJCS-100D_20231205101112.94.14239.1002_20231205112233_200_1"
* status = #final
* category = $JP_SimpleObservationCategory_CS#physiological-test "Physiological Test"
* code = $loinc#10040-4 "S wave amplitude in lead V1"
* subject = Reference(urn:uuid:a1b72bfd-61a3-4b64-8dda-99d19f546f02)
* dataAbsentReason = $data-absent-reason#unknown "Unknown"