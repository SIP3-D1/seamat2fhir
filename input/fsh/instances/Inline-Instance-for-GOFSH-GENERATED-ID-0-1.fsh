Instance: Inline-Instance-for-GOFSH-GENERATED-ID-0-1
InstanceOf: Composition
Usage: #inline
* meta.lastUpdated = "2024-01-19T09:08:27+09:00"
* meta.profile = "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Composition_EKGReport"
* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "1234567890_20231205_LJCS-100D_20231205101112...1002_20231205112233_100_1"
* status = #final
* type = $JP_Composition_SEAMAT_DocumentType_CS#28010-7 "EKG Report"
* category = $JP_Composition_SEAMAT_DocumentType_CS#28010-7 "EKG Report"
* subject = Reference(urn:uuid:6034704d-98d7-4fce-ba42-6954f265c5ab)
* date = "2019-04-03T02:08:53+09:00"
* author = Reference(urn:uuid:82d05819-efa7-4a6c-981f-0eb520b0672a)
* title = "心電図検査レポート"
* confidentiality = #N
* custodian = Reference(urn:uuid:40f57407-bfca-428f-9665-6e87451ec0cb)
* event.period.start = "2023-12-05T11:49:07+09:00"
* event.period.end = "2023-12-05T11:49:07+09:00"
* event.detail = Reference(urn:uuid:beed131b-ff46-471d-ad82-6428ab68021b)
* section[0].code = $JP_Composition_SEAMAT_SectionCode_CS#52460-3 "患者付帯情報セクション"
* section[=].entry = Reference(urn:uuid:dc4ea8e2-d6d4-498d-b8e3-35c30a68f79b)
* section[+].title = "バイタルサイン"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#74728-7 "バイタルサインセクション"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tbody><tr>   <td>身長/体重</td>   <td>150.5cm/75.0kg</td></tr></tbody><tbody><tr>   <td>血圧</td>   <td/></tr></tbody></table></div>"
* section[=].entry[0] = Reference(urn:uuid:d2fcedec-88fd-4a53-b2e1-e3314ccfa9a9)
* section[=].entry[+] = Reference(urn:uuid:3ae8cd47-3f44-495a-aae7-b24af3fc6bb6)
* section[=].entry[+] = Reference(urn:uuid:87ea302f-a008-4ee6-a770-44529104484c)
* section[+].title = "検査記述"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#70004-7 "検査記述セクション"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tbody><tr>   <td>安静時</td></tr></tbody></table></div>"
* section[=].entry = Reference(urn:uuid:9d46dfe8-5a0b-469f-a194-31d6d0df6e21)
* section[+].title = "計測値"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#29273-0 "計測値セクション"
* section[=].author = Reference(urn:uuid:8d6fefa7-5fa1-4e56-a938-fb467e3cb42a)
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tbody><tr>   <td>心拍数</td>   <td>89bpm</td></tr><tr>   <td>RR間隔</td>   <td>667ms</td></tr><tr>   <td>PR間隔</td>   <td>133ms</td></tr><tr>   <td>QRS間隔</td>   <td>85ms</td></tr><tr>   <td>QT間隔</td>   <td>352ms</td></tr><tr>   <td>QTc(B/F)間隔</td>   <td>431/402ms</td></tr><tr>   <td>P/QRS/T軸</td>   <td>-5/34/0°</td></tr><tr>   <td>SV1</td>   <td>0.74mV</td></tr><tr>   <td>RV5</td>   <td>0.96mV</td></tr><tr>   <td>RV6</td>   <td>0.89mV</td></tr><tr>   <td>RV5+SV1</td>   <td>1.70mV</td></tr><tr>   <td>RV6+SV1</td>   <td>1.63mV</td></tr></tbody></table></div>"
* section[=].entry[0] = Reference(urn:uuid:0f4dab29-2b50-4d26-b31e-db7ade67034a)
* section[=].entry[+] = Reference(urn:uuid:c4a7661b-24d2-4041-965c-eec84df811ae)
* section[=].entry[+] = Reference(urn:uuid:38242122-ea44-4719-a8ce-f6636c222011)
* section[=].entry[+] = Reference(urn:uuid:aa0fd3d3-4ffc-4935-997d-966fce7c9261)
* section[=].entry[+] = Reference(urn:uuid:30a736fe-2dd2-47f4-8d14-04749cafa984)
* section[=].entry[+] = Reference(urn:uuid:470ab561-f2cf-4459-b026-7348241d9f37)
* section[=].entry[+] = Reference(urn:uuid:0dafcc65-25fa-4b16-ad21-c3679bb5e963)
* section[=].entry[+] = Reference(urn:uuid:5eb70ff1-3dc0-4b95-8ba7-20ee01dc0483)
* section[=].entry[+] = Reference(urn:uuid:9c6e9192-cc9d-4a18-afbd-57f56d15b386)
* section[=].entry[+] = Reference(urn:uuid:034e0c7a-57de-427e-9aef-6899d5ded987)
* section[=].entry[+] = Reference(urn:uuid:888a3b04-912e-457b-8ab4-464710c2cd5d)
* section[=].entry[+] = Reference(urn:uuid:c71157df-e6f9-47c3-91eb-1ae10ca613f5)
* section[=].entry[+] = Reference(urn:uuid:e94a2ebc-bc74-419c-ae34-715100f4ae3f)
* section[=].entry[+] = Reference(urn:uuid:40164abf-813d-4fe1-a87a-6ea44d3d9ea6)
* section[+].title = "解析結果"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#64110-0 "解析結果セクション"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tbody><tr>   <td>所見</td></tr><tr>   <td>101-0</td>   <td/></tr></tbody><tbody><tr>   <td>ミネソタコード</td></tr><tr>   <td>9-4-1</td></tr></tbody><tbody><tr>   <td>グレード</td></tr><tr>   <td>正常範囲内</td></tr></tbody><tbody><tr>   <td>負荷判定</td></tr><tr>   <td>負荷－可</td></tr></tbody></table></div>"
* section[=].entry[0] = Reference(urn:uuid:5c72a9f9-c51b-4bf1-be22-bb380f92719b)
* section[=].entry[+] = Reference(urn:uuid:d5dc0b86-cf21-4ac6-ab6c-0cc8f71a2a2c)
* section[=].entry[+] = Reference(urn:uuid:77482a6e-1415-42d7-a074-8ae769bdbe7d)
* section[=].entry[+] = Reference(urn:uuid:77673132-c4b1-48fe-9bc4-71fbb2c2e426)
* section[+].title = "標準12誘導心電図"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#78239-1 "外部参照セクション"
* section[=].entry[0] = Reference(urn:uuid:8eb0bdec-827d-4aab-9af1-d4eff526c2f4)
* section[=].entry[+] = Reference(urn:uuid:b1a5a001-9be7-4b95-b035-525c0033d666)