Instance: Inline-Instance-for-GOFSH-GENERATED-ID-1-17
InstanceOf: Observation
Usage: #inline
* meta.lastUpdated = "2023-12-25T20:21:32+09:00"
* meta.profile = "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Observation_SEAMAT"
* identifier[0].system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier[=].value = "1234567890_20231205_LJCS-100D_20231205101112.94.14239.1002_20231205112233_200_1.8"
* identifier[+].system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier[=].value = "1234567890_20231205_LJCS-100D_20231205101112.94.14239.1002_20231205112233_200_1"
* status = #final
* code = $loinc#8625-6 "PR interval"
* subject = Reference(urn:uuid:77fbc1a7-8e7e-494c-9763-6545a73afcc4)
* valueQuantity.value = 216
* valueQuantity.unit = "ms"