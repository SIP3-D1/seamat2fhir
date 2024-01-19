Instance: Inline-Instance-for-GOFSH-GENERATED-ID-0-20
InstanceOf: Observation
Usage: #inline
* meta.lastUpdated = "2024-01-19T09:08:27+09:00"
* meta.profile = "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Observation_SEAMAT"
* identifier[0].system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier[=].value = "1234567890_20231205_LJCS-100D_20231205101112...1002_20231205112233_100_1.11"
* identifier[+].system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier[=].value = "1234567890_20231205_LJCS-100D_20231205101112...1002_20231205112233_100_1"
* status = #final
* code = $loinc#8636-3 "QT interval corrected"
* subject = Reference(urn:uuid:6034704d-98d7-4fce-ba42-6954f265c5ab)
* component[0].code = $loinc#76634-5 "QTc interval by Fridericia"
* component[=].valueQuantity.value = 402
* component[=].valueQuantity.unit = "ms"
* component[+].code = $loinc#76635-2 "QTc interval by Bazett"
* component[=].valueQuantity.value = 431
* component[=].valueQuantity.unit = "ms"