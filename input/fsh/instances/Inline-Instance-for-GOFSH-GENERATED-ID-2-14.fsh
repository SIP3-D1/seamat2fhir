Instance: Inline-Instance-for-GOFSH-GENERATED-ID-2-14
InstanceOf: Procedure
Usage: #inline
* meta.lastUpdated = "2024-04-12T11:08:52+09:00"
* meta.profile = "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Procedure_PCI"
* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "1234567890_20240115_LJCS-300R_20240117185921.0227990001.2024011417332568.2024011417332568_20240117185921000_-_1.54"
* status = #completed
* code = $loinc#76642-8 "Percutaneous coronary intervention study"
* subject = Reference(urn:uuid:86dc9b33-d9ab-4fa8-8bef-9df157efe574)
* reasonReference[0] = Reference(urn:uuid:63a11c5b-698c-4069-b791-1bbbceba2581)
* reasonReference[+] = Reference(urn:uuid:5976314d-441d-4f5b-b527-86a62dbd83cb)
* reasonReference[+] = Reference(urn:uuid:24641695-f4f1-4208-97a8-6d9263427631)
* reasonReference[+] = Reference(urn:uuid:f9db656d-7559-44d0-ba33-b01b55c7ff18)
* bodySite = $loinc#LA24463-4 "5-6"
* outcome.extension[0].url = "http://jpfhir.jp/fhir/SEAMAT/Extension/StructureDefinition/JP_Procedure_PCIOutcomeDetail"
* outcome.extension[=].valueReference = Reference(urn:uuid:120a96b6-5801-4f29-bca0-0bd9900bcee8)
* outcome.extension[+].url = "http://jpfhir.jp/fhir/SEAMAT/Extension/StructureDefinition/JP_Procedure_PCIOutcomeDetail"
* outcome.extension[=].valueReference = Reference(urn:uuid:64a5a531-5b0f-4784-b2ac-476b59eeacab)
* outcome = $loinc#LA33-6 "成功"
* focalDevice[0].manipulated = Reference(urn:uuid:47236a30-285b-4611-a499-643e1ddd7cae)
* focalDevice[+].manipulated = Reference(urn:uuid:ad7e6600-217d-4741-b4d0-197fb2c2af31)
* focalDevice[+].manipulated = Reference(urn:uuid:6faf50b0-6992-4cc2-bd82-a91306cc078a)