Instance: Inline-Instance-for-GOFSH-GENERATED-ID-1-20
InstanceOf: Observation
Usage: #inline
* meta.lastUpdated = "2024-01-19T09:08:02+09:00"
* meta.profile = "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Observation_SEAMAT"
* identifier[0].system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier[=].value = "1234567890_20231205_LJCS-100D_20231205101112.94.14239.1002_20231205112233_200_1.11"
* identifier[+].system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier[=].value = "1234567890_20231205_LJCS-100D_20231205101112.94.14239.1002_20231205112233_200_1"
* status = #final
* code = $loinc#8636-3 "QT interval corrected"
* subject = Reference(urn:uuid:2d0c015f-abff-45d7-bf59-b18885a1cd53)
* component[0].code = $loinc#76634-5 "QTc interval by Fridericia"
* component[=].valueQuantity.value = 431
* component[=].valueQuantity.unit = "ms"
* component[+].code = $loinc#76635-2 "QTc interval by Bazett"
* component[=].valueQuantity.value = 464
* component[=].valueQuantity.unit = "ms"