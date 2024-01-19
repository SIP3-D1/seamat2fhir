Instance: Inline-Instance-for-GOFSH-GENERATED-ID-1-2
InstanceOf: Patient
Usage: #inline
* meta.lastUpdated = "2024-01-19T09:08:01+09:00"
* meta.profile = "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Patient_SEAMAT"
* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "1234567890"
* active = true
* name[0].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #IDE
* name[=].text = "東京 太郎"
* name[=].family = "東京"
* name[=].given = "太郎"
* name[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #SYL
* name[=].text = "トウキョウ タロウ"
* name[=].family = "トウキョウ"
* name[=].given = "タロウ"
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
* managingOrganization = Reference(urn:uuid:1db439e0-dd17-4cc4-9273-0b093962bc68)