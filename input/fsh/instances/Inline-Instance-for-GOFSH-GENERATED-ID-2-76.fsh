Instance: Inline-Instance-for-GOFSH-GENERATED-ID-2-76
InstanceOf: Observation
Usage: #inline
* meta.lastUpdated = "2024-04-12T11:08:52+09:00"
* meta.profile = "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Observation_SEAMAT"
* identifier[0].system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier[=].value = "1234567890_20240115_LJCS-300R_20240117185921.0227990001.2024011417332568.2024011417332568_20240117185921000_-_1.57"
* identifier[+].system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier[=].value = "1234567890_20240115_LJCS-300R_20240117185921.0227990001.2024011417332568.2024011417332568_20240117185921000_-_1"
* status = #final
* code = $loinc#81000-2 "TIMI Grade pre"
* subject = Reference(urn:uuid:86dc9b33-d9ab-4fa8-8bef-9df157efe574)
* valueCodeableConcept = $loinc#LA26050-7 "TIMI 3"