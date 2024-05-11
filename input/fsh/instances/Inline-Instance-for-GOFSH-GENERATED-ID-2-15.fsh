Instance: Inline-Instance-for-GOFSH-GENERATED-ID-2-15
InstanceOf: Procedure
Usage: #inline
* meta.lastUpdated = "2024-04-12T11:08:52+09:00"
* meta.profile = "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Procedure_PCI"
* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "1234567890_20240115_LJCS-300R_20240117185921.0227990001.2024011417332568.2024011417332568_20240117185921000_-_1.64"
* status = #completed
* code = $loinc#76642-8 "Percutaneous coronary intervention study"
* subject = Reference(urn:uuid:86dc9b33-d9ab-4fa8-8bef-9df157efe574)
* reasonReference[0] = Reference(urn:uuid:27dfe273-ac96-4f92-bb3b-aaaf40530504)
* reasonReference[+] = Reference(urn:uuid:2b91f455-c463-4b01-af99-d0351d2ff07f)
* reasonReference[+] = Reference(urn:uuid:c79643fa-00c8-4eb4-ba19-7ccc365180c3)
* reasonReference[+] = Reference(urn:uuid:32f23303-06c4-48e1-a47e-01b811a72391)
* bodySite = $loinc#LA24459-2 "11"
* outcome.extension[0].url = "http://jpfhir.jp/fhir/SEAMAT/Extension/StructureDefinition/JP_Procedure_PCIOutcomeDetail"
* outcome.extension[=].valueReference = Reference(urn:uuid:47443a56-cbdc-43c0-a2a1-b01eb82c0700)
* outcome.extension[+].url = "http://jpfhir.jp/fhir/SEAMAT/Extension/StructureDefinition/JP_Procedure_PCIOutcomeDetail"
* outcome.extension[=].valueReference = Reference(urn:uuid:02f7dc41-dcad-4340-9542-cedb4946a8a4)
* outcome = $loinc#LA33-6 "成功"
* focalDevice[0].manipulated = Reference(urn:uuid:c5475b03-343b-4b5b-bae5-98d5c6519740)
* focalDevice[+].manipulated = Reference(urn:uuid:42e817a9-cc79-47ff-897b-aff5d346ea4a)
* focalDevice[+].manipulated = Reference(urn:uuid:d00c9adb-0762-4e98-9744-d775ddf70d13)