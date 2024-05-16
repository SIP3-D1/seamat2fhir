Instance: Inline-Instance-for-GOFSH-GENERATED-ID-2-12
InstanceOf: Procedure
Usage: #inline
* meta.lastUpdated = "2024-05-15T16:56:53+09:00"
* meta.profile = "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Procedure_PCI"
* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "1234567890_20240115_LJCS-300R_20240117185921.0227990001.2024011417332568.2024011417332568_20240117185921000_-_1.54"
* status = #completed
* code = $loinc#76642-8 "Percutaneous coronary intervention study"
* subject = Reference(urn:uuid:1eded11c-b3f3-4613-b94d-73095c366204)
* reasonReference[0] = Reference(urn:uuid:df909f82-8294-4dae-9d7f-0324ab7b6bf2)
* reasonReference[+] = Reference(urn:uuid:97f74617-192d-4158-8171-1a1eee7524aa)
* reasonReference[+] = Reference(urn:uuid:6574a417-22ba-48b7-9d0c-0d6d16700f42)
* reasonReference[+] = Reference(urn:uuid:b0d865a7-90be-4237-ae18-f4dad9ac7f53)
* bodySite = $loinc#LA24463-4 "5-6"
* outcome.extension[0].url = "http://jpfhir.jp/fhir/SEAMAT/Extension/StructureDefinition/JP_Procedure_PCIOutcomeDetail"
* outcome.extension[=].valueReference = Reference(urn:uuid:4a1bd7ce-2768-4b8d-b4ec-5fc20f09f99c)
* outcome.extension[+].url = "http://jpfhir.jp/fhir/SEAMAT/Extension/StructureDefinition/JP_Procedure_PCIOutcomeDetail"
* outcome.extension[=].valueReference = Reference(urn:uuid:f1a47063-0ea1-4f33-bf55-be8196b39a27)
* outcome = $loinc#LA33-6 "成功"
* focalDevice[0].manipulated = Reference(urn:uuid:e54cc48a-2030-4715-b175-5811aeab3deb)
* focalDevice[+].manipulated = Reference(urn:uuid:e627b834-5e15-4d90-9c70-54ffa1b07295)
* focalDevice[+].manipulated = Reference(urn:uuid:98bfd349-1a4a-48b9-a972-cc2fc54393f8)