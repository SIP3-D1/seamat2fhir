Instance: Inline-Instance-for-GOFSH-GENERATED-ID-2-1
InstanceOf: Composition
Usage: #inline
* meta.lastUpdated = "2024-04-12T11:07:58+09:00"
* meta.profile = "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Composition_CATHReport"
* language = #ja
* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "1234567890_20240115_20240117185921__1"
* status = #final
* type = $JP_Composition_SEAMAT_DocumentType_CS#18745-0 "Cardiac catheterization study"
* category = $JP_Composition_SEAMAT_DocumentType_CS#18745-0 "Cardiac catheterization study"
* subject = Reference(urn:uuid:86dc9b33-d9ab-4fa8-8bef-9df157efe574)
* date = "2024-01-17T18:59:21+09:00"
* author[0] = Reference(urn:uuid:0a89ee35-837f-4fff-ba89-7e848f46dff9)
* author[+] = Reference(urn:uuid:35f8f99c-1bda-4efe-af02-6e29c9f65326)
* title = "心臓カテーテル検査レポート"
* confidentiality = #N
* custodian = Reference(urn:uuid:d555030b-0c0b-4e54-a696-2adfeb924462)
* event.period.start = "2024-01-15T11:30:00+09:00"
* event.period.end = "2024-01-15T14:00:00+09:00"
* event.detail = Reference(urn:uuid:41896296-1f65-4c76-80fc-dd15c24d17b5)
* section[0].code = $JP_Composition_SEAMAT_SectionCode_CS#52460-3 "Patient Informationセクション"
* section[=].entry = Reference(urn:uuid:0f9b1f16-dac0-46c4-9311-0d3e980de56f)
* section[+].title = "併存疾患情報"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#78923-0 "Comorbid condition panelセクション"
* section[=].entry[0] = Reference(urn:uuid:f7f304c3-c9dc-4944-a35f-9414eef7b928)
* section[=].entry[+] = Reference(urn:uuid:061d0ee6-029b-4965-a52f-978113ef86f3)
* section[=].entry[+] = Reference(urn:uuid:c39e53b2-17a3-4bf4-a1e7-014c1ab8be3f)
* section[=].entry[+] = Reference(urn:uuid:f51c81e8-234f-4af3-afc2-6823c663203c)
* section[=].entry[+] = Reference(urn:uuid:6a8486ab-9571-4aa8-b2e6-3033f41af6ee)
* section[+].title = "冠危険因子"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#78940-4 "Coronary artery disease risk factor panelセクション"
* section[=].entry[0] = Reference(urn:uuid:895dae46-c1d9-4194-85ae-ec510b928649)
* section[=].entry[+] = Reference(urn:uuid:742b2fce-aa54-43f0-ad88-3ed01a1d3f02)
* section[=].entry[+] = Reference(urn:uuid:d616f9c9-49fc-4c3c-b321-56314408d789)
* section[=].entry[+] = Reference(urn:uuid:ce8eeea5-3c72-457e-83fc-c22ef9c82264)
* section[+].title = "循環器疾患既往歴"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#78941-2 "Cardiovascular disease history panelセクション"
* section[=].entry[0] = Reference(urn:uuid:f5a86ca0-b6a9-4363-acb4-88b6283d6af6)
* section[=].entry[+] = Reference(urn:uuid:274b6561-6516-4001-bbba-68241fefdf3a)
* section[=].entry[+] = Reference(urn:uuid:505d1ef3-e8ee-41af-81a1-f57b43585de9)
* section[+].title = "過去の血行再建"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#80286-8 "History of Surgical procedures of cardiovascular systemセクション"
* section[=].entry[0] = Reference(urn:uuid:851e9e47-c6f8-47f5-ab8f-9f768182ae8d)
* section[=].entry[+] = Reference(urn:uuid:1a482c91-6228-4782-9ef7-627ebc4fa45c)
* section[+].title = "術前情報"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#80528-3 "Catheterization and angiography preoperative information panelセクション"
* section[=].entry[0] = Reference(urn:uuid:17ebe577-09dd-40e3-9e63-785617c1e518)
* section[=].entry[+] = Reference(urn:uuid:5ef79476-5ab7-4f30-acb8-af04dd6a2022)
* section[=].entry[+] = Reference(urn:uuid:1b8c4c34-4724-49bd-86f9-7c84c7a38fdd)
* section[=].entry[+] = Reference(urn:uuid:a69880cd-6266-420e-a378-c95de875c1cb)
* section[=].entry[+] = Reference(urn:uuid:3b5f5a35-b0c7-4b2a-8ddb-7bbf8b9e5c43)
* section[=].entry[+] = Reference(urn:uuid:6db8b889-9396-4502-b366-f476a32d43ef)
* section[=].entry[+] = Reference(urn:uuid:0680299f-918b-4bce-9110-e7f9f6c8b0b4)
* section[=].entry[+] = Reference(urn:uuid:3914c69b-878f-4078-be38-76262d3e2e7a)
* section[=].entry[+] = Reference(urn:uuid:f5c18616-112c-41e5-8097-bee79d017a64)
* section[=].entry[+] = Reference(urn:uuid:404cd707-753c-4f78-b0e8-1ebce47f549f)
* section[=].entry[+] = Reference(urn:uuid:f813a523-c4d2-49d8-b576-928a9a9665cf)
* section[+].title = "検査情報"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#80190-2 "Catheterization and angiography procedure details panelセクション"
* section[=].entry[0] = Reference(urn:uuid:21ed6e8f-39c4-43c6-addc-dc6a0b9ce992)
* section[=].entry[+] = Reference(urn:uuid:e68de9f1-ca68-48c5-850a-13e1fd0cb400)
* section[=].entry[+] = Reference(urn:uuid:1cb3ffe4-1eaf-46ba-a8ce-55550d9cf8ee)
* section[=].entry[+] = Reference(urn:uuid:76003fd4-35ec-4e15-96c2-74f594913571)
* section[=].entry[+] = Reference(urn:uuid:ea19d98d-d79c-45ea-abf8-ea3766ba4089)
* section[=].entry[+] = Reference(urn:uuid:5023a20a-ec18-45a5-8dd0-8446fbbeec72)
* section[=].entry[+] = Reference(urn:uuid:e859d321-c30d-4a55-aeac-d3abc49e8844)
* section[=].entry[+] = Reference(urn:uuid:f8585bf0-e47b-414c-8603-ee6a08bfab8c)
* section[=].entry[+] = Reference(urn:uuid:45e69992-d118-4ca9-8d53-83ca6ecc70ff)
* section[=].entry[+] = Reference(urn:uuid:680f6bf5-90ee-4a84-a8b3-9e392bc2f71a)
* section[=].entry[+] = Reference(urn:uuid:c01508e5-285f-40f4-b444-c76bf8c66865)
* section[=].entry[+] = Reference(urn:uuid:187ecdfb-41f3-4637-9db9-25d2caa2e023)
* section[+].title = "検査内容"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#78949-5 "Catheterization and angiography procedures performed panelセクション"
* section[=].entry[0] = Reference(urn:uuid:9ebcf4b9-4ffc-4916-8ad7-34b77ec625a7)
* section[=].entry[+] = Reference(urn:uuid:d701b4e2-4307-4166-95ec-7be8fb189b3c)
* section[=].entry[+] = Reference(urn:uuid:063c738e-592e-4262-a655-2fb6d3c0e471)
* section[=].entry[+] = Reference(urn:uuid:ab84493b-a2c0-4771-ab5e-e5f6ba4cc724)
* section[=].entry[+] = Reference(urn:uuid:f4aaccc1-9c1a-4019-a355-5b722111174b)
* section[=].entry[+] = Reference(urn:uuid:8ad7d2fa-a09d-4edd-be3c-488852d07515)
* section[=].entry[+] = Reference(urn:uuid:6d1f0ebf-3715-4a57-9cc8-179ea6ae1e97)
* section[=].entry[+] = Reference(urn:uuid:e500b26a-810a-4596-a05a-f718698c54ed)
* section[=].entry[+] = Reference(urn:uuid:b8540794-c972-4e55-9fb0-4edba4c17075)
* section[+].title = "補助循環治療"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#78933-9 "Assisted circulation procedures performed panelセクション"
* section[=].entry[0] = Reference(urn:uuid:81bdc1ad-df08-4add-ab7c-c7a21131cb8c)
* section[=].entry[+] = Reference(urn:uuid:eda42a66-2dc5-4ed9-8039-0bbe4c8f625e)
* section[=].entry[+] = Reference(urn:uuid:f029c09a-fee0-4c45-94eb-3238d3865765)
* section[=].entry[+] = Reference(urn:uuid:aa568520-904c-4373-8201-58ab3e099bbf)
* section[+].title = "冠動脈病変"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#78896-8 "Coronary angiography panelセクション"
* section[=].entry = Reference(urn:uuid:25bed949-350f-47b1-9cb2-d51bfe2b10da)
* section[+].title = "PCI処置"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#78914-9 "Percutaneous coronary intervention panelセクション"
* section[=].entry = Reference(urn:uuid:2bcbc9ab-9b98-4d2e-97e4-ad6cd009d7e9)
* section[+].title = "PCI処置"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#78914-9 "Percutaneous coronary intervention panelセクション"
* section[=].entry = Reference(urn:uuid:18ccfd18-63bb-4deb-b9b8-f640dc4dca34)