Instance: Inline-Instance-for-GOFSH-GENERATED-ID-1-1
InstanceOf: Composition
Usage: #inline
* meta.lastUpdated = "2024-01-19T09:08:02+09:00"
* meta.profile = "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Composition_EKGReport"
* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "1234567890_20231205_LJCS-100D_20231205101112.94.14239.1002_20231205112233_200_1"
* status = #final
* type = $JP_Composition_SEAMAT_DocumentType_CS#28010-7 "EKG Report"
* category = $JP_Composition_SEAMAT_DocumentType_CS#28010-7 "EKG Report"
* subject = Reference(urn:uuid:2d0c015f-abff-45d7-bf59-b18885a1cd53)
* date = "2019-03-26T00:43:30+09:00"
* author = Reference(urn:uuid:8f4b8e50-0d95-41b1-9560-0f27fee8b97e)
* title = "心電図検査レポート"
* confidentiality = #N
* custodian = Reference(urn:uuid:6f0bd2a7-85dc-43cb-bb7f-28a8e69eb88b)
* event.period.start = "2023-12-05T13:49:04+09:00"
* event.period.end = "2023-12-05T13:49:04+09:00"
* event.detail = Reference(urn:uuid:9fd0f20a-bc74-436e-9e3d-47d6221d283d)
* section[0].code = $JP_Composition_SEAMAT_SectionCode_CS#52460-3 "患者付帯情報セクション"
* section[=].entry = Reference(urn:uuid:a124dc3a-4322-407c-9b9f-bc9cee050240)
* section[+].title = "バイタルサイン"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#74728-7 "バイタルサインセクション"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tbody><tr>   <td>身長/体重</td>   <td>151.5cm/66.1kg</td></tr></tbody><tbody><tr>   <td>血圧</td>   <td/></tr></tbody></table></div>"
* section[=].entry[0] = Reference(urn:uuid:6ec81e79-7905-4c24-9ad8-5eec1b3082da)
* section[=].entry[+] = Reference(urn:uuid:9ee088ed-abbd-4df4-8f3c-41afc94bf572)
* section[=].entry[+] = Reference(urn:uuid:d9640e63-054c-4f0d-a517-d56e1b752fb6)
* section[+].title = "検査記述"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#70004-7 "検査記述セクション"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tbody><tr>   <td>安静時</td></tr></tbody></table></div>"
* section[=].entry = Reference(urn:uuid:46b56c4a-c395-4276-9038-a939f9f22826)
* section[+].title = "計測値"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#29273-0 "計測値セクション"
* section[=].author = Reference(urn:uuid:6bdbc9cb-b61f-4926-98e8-60d6c5d41379)
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tbody><tr>   <td>心拍数</td>   <td>93bpm</td></tr><tr>   <td>RR間隔</td>   <td>644ms</td></tr><tr>   <td>PR間隔</td>   <td>216ms</td></tr><tr>   <td>QRS間隔</td>   <td>87ms</td></tr><tr>   <td>QT間隔</td>   <td>373ms</td></tr><tr>   <td>QTc(B/F)間隔</td>   <td>464/431ms</td></tr><tr>   <td>P/QRS/T軸</td>   <td>0/5/36°</td></tr><tr>   <td>SV1</td>   <td>0.42mV</td></tr><tr>   <td>RV5</td>   <td>1.50mV</td></tr><tr>   <td>RV6</td>   <td>0.91mV</td></tr><tr>   <td>RV5+SV1</td>   <td>1.92mV</td></tr><tr>   <td>RV6+SV1</td>   <td>1.33mV</td></tr></tbody></table></div>"
* section[=].entry[0] = Reference(urn:uuid:932bab83-729f-4f9c-aea3-84b642fb0365)
* section[=].entry[+] = Reference(urn:uuid:aaf8ecd5-403d-4cc1-af37-9e9bae62d468)
* section[=].entry[+] = Reference(urn:uuid:4907a7cf-3610-42c3-a8cc-335b1202297b)
* section[=].entry[+] = Reference(urn:uuid:ee5137c4-d27d-4a0a-8c16-dd077a7555a1)
* section[=].entry[+] = Reference(urn:uuid:c4995418-fa41-4f36-96f4-1c3988515aec)
* section[=].entry[+] = Reference(urn:uuid:89172547-325f-4e52-a585-de9d0b31ce0d)
* section[=].entry[+] = Reference(urn:uuid:ef761edb-25ab-4133-89f5-590ab1f2f3fa)
* section[=].entry[+] = Reference(urn:uuid:c117bde6-207c-460f-bf12-0e74c0728c2c)
* section[=].entry[+] = Reference(urn:uuid:9be5d765-0d0f-45c7-83ac-55adf9a14a1a)
* section[=].entry[+] = Reference(urn:uuid:18952740-66db-430d-bb42-a57b759d2207)
* section[=].entry[+] = Reference(urn:uuid:ae0a25ea-2678-4fba-a01c-00088ac6ba20)
* section[=].entry[+] = Reference(urn:uuid:7f4d6c70-9c94-4b25-af48-f7728d10ae93)
* section[=].entry[+] = Reference(urn:uuid:a513a643-f84e-4226-b0a2-b0517a23efea)
* section[=].entry[+] = Reference(urn:uuid:1c36bc74-dfe3-4b27-b8b5-af488a1505ac)
* section[+].title = "解析結果"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#64110-0 "解析結果セクション"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tbody><tr>   <td>所見</td></tr><tr>   <td>871-6</td>   <td/></tr><tr>   <td>632-6</td>   <td>:Ⅱ</td></tr><tr>   <td>701-4</td>   <td>:V2,V3</td></tr></tbody><tbody><tr>   <td>ミネソタコード</td></tr><tr>   <td>8-3-2</td>   <td>7-5</td>   <td>1-2-8</td>   <td>4-2</td>   <td>9-4-2</td></tr></tbody><tbody><tr>   <td>グレード</td></tr><tr>   <td>異常の心電図</td></tr></tbody><tbody><tr>   <td>負荷判定</td></tr><tr>   <td>負荷－不可</td></tr></tbody></table></div>"
* section[=].entry[0] = Reference(urn:uuid:1d623cdf-da4f-4972-bdff-0d4cc2636107)
* section[=].entry[+] = Reference(urn:uuid:ea019c10-362d-4985-90e1-1ad508f3db68)
* section[=].entry[+] = Reference(urn:uuid:fdb73b24-5a8d-4dca-9e1f-5a61635fe1d6)
* section[=].entry[+] = Reference(urn:uuid:f127ca11-5bb2-43f5-9b7b-e36c60466953)
* section[=].entry[+] = Reference(urn:uuid:00bdbe89-a2d5-4d3f-8cfc-ca34e9f1fc4c)
* section[=].entry[+] = Reference(urn:uuid:e9e195ff-da65-41d5-85f1-1f15d5ede375)
* section[=].entry[+] = Reference(urn:uuid:aab5ad9b-39ae-4839-8ddc-6b0463e1d6dd)
* section[=].entry[+] = Reference(urn:uuid:ae924eef-82b5-42c5-bed3-29bf1627911a)
* section[=].entry[+] = Reference(urn:uuid:a5d9816e-3426-4f0b-b728-5e3c13c104ad)
* section[=].entry[+] = Reference(urn:uuid:9f66e631-90e2-43c2-bd73-788b8cbf1750)
* section[+].title = "標準12誘導心電図"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#78239-1 "外部参照セクション"
* section[=].entry[0] = Reference(urn:uuid:dd51f68e-1533-419c-bf7d-bf1e87058bc7)
* section[=].entry[+] = Reference(urn:uuid:77eacf9f-12de-4325-9760-c626f2a9059a)