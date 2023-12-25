Instance: Inline-Instance-for-GOFSH-GENERATED-ID-0-23
InstanceOf: Observation
Usage: #inline
* meta.lastUpdated = "2023-12-25T17:49:16+09:00"
* meta.profile = "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Observation_SEAMAT"
* identifier[0].system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier[=].value = "1234567890_20231205_LJCS-100D_20231205101112.94.14239.1002_20231205112233_200_1.14"
* identifier[+].system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier[=].value = "1234567890_20231205_LJCS-100D_20231205101112.94.14239.1002_20231205112233_200_1"
* status = #final
* category = $JP_SimpleObservationCategory_CS#physiological-test "Physiological Test"
* code = $loinc#8638-9 "T wave axis"
* subject = Reference(urn:uuid:a1b72bfd-61a3-4b64-8dda-99d19f546f02)
* valueQuantity.value = 36
* valueQuantity.unit = "deg"