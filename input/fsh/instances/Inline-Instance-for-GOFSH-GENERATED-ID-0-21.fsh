Instance: Inline-Instance-for-GOFSH-GENERATED-ID-0-21
InstanceOf: Observation
Usage: #inline
* meta.lastUpdated = "2024-01-19T09:08:27+09:00"
* meta.profile = "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Observation_SEAMAT"
* identifier[0].system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier[=].value = "1234567890_20231205_LJCS-100D_20231205101112...1002_20231205112233_100_1.12"
* identifier[+].system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier[=].value = "1234567890_20231205_LJCS-100D_20231205101112...1002_20231205112233_100_1"
* status = #final
* code = $loinc#8626-4 "P wave axis"
* subject = Reference(urn:uuid:6034704d-98d7-4fce-ba42-6954f265c5ab)
* valueQuantity.value = -5
* valueQuantity.unit = "deg"