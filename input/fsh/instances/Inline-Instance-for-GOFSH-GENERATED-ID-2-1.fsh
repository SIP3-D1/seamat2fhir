Instance: Inline-Instance-for-GOFSH-GENERATED-ID-2-1
InstanceOf: Composition
Usage: #inline
* meta.lastUpdated = "2024-05-15T16:56:52+09:00"
* meta.profile = "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Composition_CATHReport"
* language = #ja
* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "1234567890_20240115_20240117185921__1"
* status = #final
* type = $JP_Composition_SEAMAT_DocumentType_CS#18745-0 "Cardiac catheterization study"
* category = $JP_Composition_SEAMAT_DocumentType_CS#18745-0 "Cardiac catheterization study"
* subject = Reference(urn:uuid:1eded11c-b3f3-4613-b94d-73095c366204)
* date = "2024-01-17T18:59:21+09:00"
* author = Reference(urn:uuid:1cc6ff0b-8e8d-43e4-821d-885b4725bdec)
* title = "心臓カテーテル検査レポート"
* confidentiality = #N
* custodian = Reference(urn:uuid:d324b588-eb39-4438-b264-6ee10257ea92)
* event.period.start = "2024-01-15T11:30:00+09:00"
* event.period.end = "2024-01-15T14:00:00+09:00"
* event.detail = Reference(urn:uuid:1fe1e6d1-e96f-488c-800e-0aefedefe4c5)
* section[0].code = $JP_Composition_SEAMAT_SectionCode_CS#52460-3 "患者付帯情報セクション"
* section[=].entry = Reference(urn:uuid:5bc8b2c2-a646-4820-bebd-6e393ab2fb62)
* section[+].title = "併存疾患情報"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#78923-0 "併存疾患情報セクション"
* section[=].entry[0] = Reference(urn:uuid:14ddd5ff-353b-4472-9f71-c9ee11e075d2)
* section[=].entry[+] = Reference(urn:uuid:182d42e8-d040-434d-be6a-659102ca85b6)
* section[=].entry[+] = Reference(urn:uuid:91acde4d-f984-4391-8377-7a54d53d240c)
* section[=].entry[+] = Reference(urn:uuid:c39a4a15-2814-4377-a514-bf3d378ff02e)
* section[=].entry[+] = Reference(urn:uuid:9d98c3f4-e460-44e6-adbd-41d5c15a917e)
* section[+].title = "冠危険因子"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#78940-4 "冠危険因子セクション"
* section[=].entry[0] = Reference(urn:uuid:65e3b87e-2205-4529-858c-9f2bf31cfa4f)
* section[=].entry[+] = Reference(urn:uuid:39d88a1f-a23d-44b1-b3f4-f1ec36bd7805)
* section[=].entry[+] = Reference(urn:uuid:ed1d30a0-cfb1-45b3-a0e6-76675a39e659)
* section[=].entry[+] = Reference(urn:uuid:0965a8e5-dbca-46b2-aaf1-315123d06446)
* section[+].title = "循環器疾患既往歴"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#78941-2 "循環器疾患既往歴セクション"
* section[=].entry[0] = Reference(urn:uuid:106297ff-c834-41f5-b293-d3fb85c82f88)
* section[=].entry[+] = Reference(urn:uuid:cef318d1-b3bf-4eb6-9eb7-b0d3ad5a7654)
* section[=].entry[+] = Reference(urn:uuid:77128692-e105-479f-a20c-9b2eb99dd18a)
* section[+].title = "過去の血行再建"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#80286-8 "過去の血行再建セクション"
* section[=].entry[0] = Reference(urn:uuid:94ade903-a187-4593-a7dc-03f58464cf76)
* section[=].entry[+] = Reference(urn:uuid:8a4608e5-3219-497e-b987-ca1e0007deeb)
* section[+].title = "術前情報"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#80528-3 "術前情報セクション"
* section[=].entry[0] = Reference(urn:uuid:43d4e34a-4eee-4b0a-aa7b-af12203dfbde)
* section[=].entry[+] = Reference(urn:uuid:c7e4593e-d4db-4000-bf3c-de540ece82a5)
* section[=].entry[+] = Reference(urn:uuid:2e6b8828-fd96-4e4e-90cf-e3f2698ae321)
* section[=].entry[+] = Reference(urn:uuid:d09d82b7-cb55-4552-b106-a26037e41fde)
* section[=].entry[+] = Reference(urn:uuid:cab0ebb2-7267-483b-b90d-426a73086d25)
* section[=].entry[+] = Reference(urn:uuid:992d2926-3b70-4d94-85f0-61785a4ef384)
* section[=].entry[+] = Reference(urn:uuid:c8476fc8-5cb0-4a5a-b698-cf9cf87f550a)
* section[=].entry[+] = Reference(urn:uuid:ecbc0c33-90d5-4aef-80d7-8ca133b3580f)
* section[=].entry[+] = Reference(urn:uuid:a3fccf6a-8bd5-40f0-82cf-8a009a2eebac)
* section[=].entry[+] = Reference(urn:uuid:0e7899a2-bb19-4c8c-a8df-112114d3c83e)
* section[=].entry[+] = Reference(urn:uuid:c79d8491-e300-484f-ba40-73f9cc77572b)
* section[+].title = "検査情報"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#80190-2 "検査情報セクション"
* section[=].entry[0] = Reference(urn:uuid:888fea40-9c5c-492e-9ecd-c0e5bfbfe67c)
* section[=].entry[+] = Reference(urn:uuid:fe28bb09-e6b4-4734-a717-ea209954d8a7)
* section[=].entry[+] = Reference(urn:uuid:5e7f18bc-780f-43a9-bf4e-2c6abaead76c)
* section[=].entry[+] = Reference(urn:uuid:ade99907-d045-4cd4-b9b5-6a87be107fa0)
* section[=].entry[+] = Reference(urn:uuid:2d4433d2-ebdb-4b1d-9bd5-9895f56aa6f2)
* section[=].entry[+] = Reference(urn:uuid:d972f71b-d331-46dd-bd14-456cc657d47d)
* section[=].entry[+] = Reference(urn:uuid:3f04dc21-da31-46bf-8f9d-9a749161b514)
* section[=].entry[+] = Reference(urn:uuid:2cbd8ab1-2d86-4717-9615-eb629fa6058e)
* section[=].entry[+] = Reference(urn:uuid:3f984b7f-4dd0-416a-b4e7-bf35e93525a4)
* section[=].entry[+] = Reference(urn:uuid:df4ede72-a0a3-45f9-a1cc-a6b2d5289be6)
* section[=].entry[+] = Reference(urn:uuid:6ad3931a-461b-4c18-8d65-16cab78fccd7)
* section[=].entry[+] = Reference(urn:uuid:56bee6c3-b08a-4b75-a803-bfe9579521d4)
* section[+].title = "検査内容"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#78949-5 "検査内容セクション"
* section[=].entry[0] = Reference(urn:uuid:4a1c97fe-96bb-4a21-aad2-d1f954a48396)
* section[=].entry[+] = Reference(urn:uuid:974998b1-970d-437b-83ca-4645db5d88f2)
* section[=].entry[+] = Reference(urn:uuid:f2afd3e5-e3a8-4196-b84a-c525823f7733)
* section[=].entry[+] = Reference(urn:uuid:185736da-7e08-4d2f-8c8e-63c1b2d47ddc)
* section[=].entry[+] = Reference(urn:uuid:6198f9ec-5c71-4593-8919-155c36b1ebd1)
* section[=].entry[+] = Reference(urn:uuid:4553d7c2-3546-4649-b801-c12e82d9019c)
* section[=].entry[+] = Reference(urn:uuid:ca2399ae-f65c-4f34-a62f-8d2dea5a72f9)
* section[=].entry[+] = Reference(urn:uuid:84e8619a-67e5-4ad6-ac27-55e869fbd2fe)
* section[=].entry[+] = Reference(urn:uuid:3cbe46fc-4d10-42b1-8f79-42c7a62df1fc)
* section[+].title = "補助循環治療"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#78933-9 "補助循環治療セクション"
* section[=].entry[0] = Reference(urn:uuid:08827bae-ead2-4571-a550-60c15c1ff075)
* section[=].entry[+] = Reference(urn:uuid:8d3684d2-dd0f-49ba-91d8-636f070892b0)
* section[=].entry[+] = Reference(urn:uuid:9385a187-6040-404f-858a-c72aa4784cc7)
* section[=].entry[+] = Reference(urn:uuid:af2d8240-4d12-4c76-a189-93458b89b374)
* section[+].title = "冠動脈病変"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#78896-8 "冠動脈病変セクション"
* section[=].entry = Reference(urn:uuid:ceb68b36-9288-4bfa-87cd-496ca7736ee1)
* section[+].title = "PCI処置"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#78914-9 "PCI処置セクション"
* section[=].entry = Reference(urn:uuid:33ed594c-4992-48a4-918a-1e38612e4a78)
* section[+].title = "PCI処置"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#78914-9 "PCI処置セクション"
* section[=].entry = Reference(urn:uuid:d8ffd530-8ab5-4acc-aeea-30a70ab1f41f)