Instance: Inline-Instance-for-GOFSH-GENERATED-ID-2-2
InstanceOf: Patient
Usage: #inline
* meta.lastUpdated = "2024-04-12T11:07:57+09:00"
* meta.profile = "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Patient_SEAMAT"
* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "1234567890"
* active = true
* name[0].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #IDE
* name[=].text = "\n          PCI患者\n        "
* name[=].family = "PCI患者"
* name[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #SYL
* name[=].text = "\n          PCI　カンジャ\n        "
* name[=].family = "PCI　カンジャ"
* gender = #female
* birthDate = "1948-07-07"
* managingOrganization = Reference(urn:uuid:676c1d9b-6c77-41c4-bc12-02620f564b88)