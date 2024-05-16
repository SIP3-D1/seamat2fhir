Instance: Inline-Instance-for-GOFSH-GENERATED-ID-2-75
InstanceOf: Observation
Usage: #inline
* meta.lastUpdated = "2024-05-15T16:56:53+09:00"
* meta.profile = "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Observation_SEAMAT"
* identifier[0].system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier[=].value = "1234567890_20240115_LJCS-300R_20240117185921.0227990001.2024011417332568.2024011417332568_20240117185921000_-_1.58"
* identifier[+].system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier[=].value = "1234567890_20240115_LJCS-300R_20240117185921.0227990001.2024011417332568.2024011417332568_20240117185921000_-_1"
* status = #final
* code = $loinc#81001-0 "TIMI Grade post"
* subject = Reference(urn:uuid:1eded11c-b3f3-4613-b94d-73095c366204)
* valueCodeableConcept = $loinc#LA26050-7 "TIMI 3"