Instance: Inline-Instance-for-GOFSH-GENERATED-ID-2-13
InstanceOf: Procedure
Usage: #inline
* meta.lastUpdated = "2024-05-15T16:56:53+09:00"
* meta.profile = "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Procedure_PCI"
* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "1234567890_20240115_LJCS-300R_20240117185921.0227990001.2024011417332568.2024011417332568_20240117185921000_-_1.64"
* status = #completed
* code = $loinc#76642-8 "Percutaneous coronary intervention study"
* subject = Reference(urn:uuid:1eded11c-b3f3-4613-b94d-73095c366204)
* reasonReference[0] = Reference(urn:uuid:e9556949-bfe1-4546-9f30-6a641e93277a)
* reasonReference[+] = Reference(urn:uuid:a041a8b5-b88e-4ee2-b8b8-b030b548ba79)
* reasonReference[+] = Reference(urn:uuid:f63d8f9b-56bc-43ee-bfef-06e8bb93e47b)
* reasonReference[+] = Reference(urn:uuid:9bb3d175-8ba8-4cf4-9eb1-030a8c7318e3)
* bodySite = $loinc#LA24459-2 "11"
* outcome.extension[0].url = "http://jpfhir.jp/fhir/SEAMAT/Extension/StructureDefinition/JP_Procedure_PCIOutcomeDetail"
* outcome.extension[=].valueReference = Reference(urn:uuid:d0615a89-6fbc-4c05-a407-289d4b3f0f19)
* outcome.extension[+].url = "http://jpfhir.jp/fhir/SEAMAT/Extension/StructureDefinition/JP_Procedure_PCIOutcomeDetail"
* outcome.extension[=].valueReference = Reference(urn:uuid:de89fa86-493f-4e44-a20b-569782a27424)
* outcome = $loinc#LA33-6 "成功"
* focalDevice[0].manipulated = Reference(urn:uuid:415ba564-be1a-4ca5-8bcb-014477ae6499)
* focalDevice[+].manipulated = Reference(urn:uuid:621aa6f0-2376-4958-b7a4-e5ac38980a76)
* focalDevice[+].manipulated = Reference(urn:uuid:fa406767-3cdf-4032-9e86-f11bef291f7e)