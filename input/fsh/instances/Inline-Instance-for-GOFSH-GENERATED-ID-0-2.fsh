Instance: Inline-Instance-for-GOFSH-GENERATED-ID-0-2
InstanceOf: Patient
Usage: #inline
* meta.lastUpdated = "2023-12-25T20:21:32+09:00"
* meta.profile = "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Patient_SEAMAT"
* identifier[0].system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier[=].value = "1234567890"
* identifier[+].system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier[=].value = "1234567890_20231205_LJCS-100D_20231205101112.94.14239.1002_20231205112233_200_1"
* active = true
* name[0].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #IDE
* name[=].family = "********"
* name[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #SYL
* name[=].family = "********"
* telecom.system = #phone
* telecom.value = "03-1234-5678"
* telecom.use = #home
* gender = #male
* birthDate = "1965-04-15"
* address.use = #home
* address.line = "南葛西１－２－３"
* address.city = "江戸川区"
* address.state = "東京都"
* address.postalCode = "134-0085"
* address.country = "JP"
* managingOrganization = Reference(urn:uuid:86ca4d7f-f7d1-4185-8f51-10f40e95189c)