Instance: Inline-Instance-for-GOFSH-GENERATED-ID-0-1
InstanceOf: Composition
Usage: #inline
* meta.lastUpdated = "2023-12-25T17:49:16+09:00"
* meta.profile = "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Composition_EKGReport"
* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "1234567890_20231205_LJCS-100D_20231205101112.94.14239.1002_20231205112233_200_1"
* status = #final
* type = $JP_Composition_SEAMAT_DocumentType_CS#28010-7 "EKG Report"
* category = $JP_Composition_SEAMAT_DocumentType_CS#28010-7 "EKG Report"
* subject = Reference(urn:uuid:a1b72bfd-61a3-4b64-8dda-99d19f546f02)
* date = "2019-03-26T00:43:30+09:00"
* author = Reference(urn:uuid:6229ef9b-1293-44e6-a018-bdb28b1f6141)
* title = "心電図検査レポート"
* confidentiality = #N
* custodian = Reference(urn:uuid:fa299bce-3417-4e05-b138-a1288392d16d)
* event.period.start = "2023-12-05T13:49:04+09:00"
* event.period.end = "2023-12-05T13:49:04+09:00"
* event.detail = Reference(urn:uuid:2269a8cc-ab14-4c2b-a0bc-0234f572501a)
* section[0].code = $JP_Composition_SEAMAT_SectionCode_CS#52460-3 "患者付帯情報セクション"
* section[=].entry = Reference(urn:uuid:beebd63e-10df-4b9e-aa4c-8826ff044a44)
* section[+].title = "バイタルサイン"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#74728-7 "バイタルサインセクション"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tbody><tr>   <td>身長/体重</td>   <td>151.5cm/66.1kg</td></tr></tbody><tbody><tr>   <td>血圧</td>   <td/></tr></tbody></table></div>"
* section[=].entry[0] = Reference(urn:uuid:9c3bdcb1-c10d-408f-9a6e-0392ac3c01bb)
* section[=].entry[+] = Reference(urn:uuid:7ffa4296-9e1f-4a71-92b3-c474282d018f)
* section[=].entry[+] = Reference(urn:uuid:3079d7b9-f789-47dc-b873-00955930ed4a)
* section[+].title = "検査記述"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#70004-7 "検査記述セクション"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tbody><tr>   <td>安静時</td></tr></tbody></table></div>"
* section[=].entry = Reference(urn:uuid:5de8b618-001f-42d4-b64c-962f6bd9b8f0)
* section[+].title = "計測値"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#29273-0 "計測値セクション"
* section[=].author = Reference(urn:uuid:6a6b6cfb-72d7-48f3-a90c-63078efeeeb7)
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tbody><tr>   <td>心拍数</td>   <td>93bpm</td></tr><tr>   <td>RR間隔</td>   <td>644ms</td></tr><tr>   <td>PR間隔</td>   <td>216ms</td></tr><tr>   <td>QRS間隔</td>   <td>87ms</td></tr><tr>   <td>QT間隔</td>   <td>373ms</td></tr><tr>   <td>QTc(B/F)間隔</td>   <td>464/431ms</td></tr><tr>   <td>P/QRS/T軸</td>   <td>0/5/36°</td></tr><tr>   <td>SV1</td>   <td>0.42mV</td></tr><tr>   <td>RV5</td>   <td>1.50mV</td></tr><tr>   <td>RV6</td>   <td>0.91mV</td></tr><tr>   <td>RV5+SV1</td>   <td>1.92mV</td></tr><tr>   <td>RV6+SV1</td>   <td>1.33mV</td></tr></tbody></table></div>"
* section[=].entry[0] = Reference(urn:uuid:ab91073a-9a94-4959-bc8b-44c24d72cdf5)
* section[=].entry[+] = Reference(urn:uuid:c6170e15-0358-40bb-95c9-80c4bf8cfbee)
* section[=].entry[+] = Reference(urn:uuid:d4bf2302-d753-43f4-b0c4-5740305eedd2)
* section[=].entry[+] = Reference(urn:uuid:96563ef0-6969-4204-acf0-a8e65dd55e8e)
* section[=].entry[+] = Reference(urn:uuid:3e2a959a-8b4d-4a77-a5dc-22565c868a9b)
* section[=].entry[+] = Reference(urn:uuid:95cd40f7-8181-4b9b-82af-f9fbd37e2d05)
* section[=].entry[+] = Reference(urn:uuid:46c233c1-9cb7-4f2d-9191-2e5bec0bbaec)
* section[=].entry[+] = Reference(urn:uuid:bdb1fbd5-00f0-4080-8c20-877c8bb4830e)
* section[=].entry[+] = Reference(urn:uuid:4b33e17f-c9e4-43d2-a604-9ff1491563a9)
* section[=].entry[+] = Reference(urn:uuid:316babe6-50c2-455e-8bc8-9b5dc3f3cb69)
* section[=].entry[+] = Reference(urn:uuid:a55bde8c-7738-4c72-8cac-f0301d41fe4f)
* section[=].entry[+] = Reference(urn:uuid:dc6a21bd-c90c-401d-88cf-0e2f3d6ec820)
* section[=].entry[+] = Reference(urn:uuid:34f9858e-1002-4069-b798-60f7e0065a2b)
* section[=].entry[+] = Reference(urn:uuid:7ffdcce0-9e59-42c4-80db-eb1349a2b3cb)
* section[+].title = "解析結果"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#64110-0 "解析結果セクション"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tbody><tr>   <td>所見</td></tr><tr>   <td>871-6</td>   <td/></tr><tr>   <td>632-6</td>   <td>:Ⅱ</td></tr><tr>   <td>701-4</td>   <td>:V2,V3</td></tr></tbody><tbody><tr>   <td>ミネソタコード</td></tr><tr>   <td>8-3-2</td>   <td>7-5</td>   <td>1-2-8</td>   <td>4-2</td>   <td>9-4-2</td></tr></tbody><tbody><tr>   <td>グレード</td></tr><tr>   <td>異常の心電図</td></tr></tbody><tbody><tr>   <td>負荷判定</td></tr><tr>   <td>負荷－不可</td></tr></tbody></table></div>"
* section[=].entry[0] = Reference(urn:uuid:8f344e21-16fc-44cd-9962-772141754e77)
* section[=].entry[+] = Reference(urn:uuid:5e17bfc6-4ee4-411b-b9e1-537ba8991d46)
* section[=].entry[+] = Reference(urn:uuid:f82a92c6-4688-4e79-bf13-31589b7980a4)
* section[=].entry[+] = Reference(urn:uuid:3fa249d2-b045-4a3f-9e38-788e3d9b89dd)
* section[=].entry[+] = Reference(urn:uuid:f9c2c3ba-ad68-4656-b78b-f2c1de6f8604)
* section[=].entry[+] = Reference(urn:uuid:c65eb555-9026-4329-b6e7-8393b4ddc285)
* section[=].entry[+] = Reference(urn:uuid:1d3dcf23-9028-4d1a-8944-35c76f5b05e6)
* section[=].entry[+] = Reference(urn:uuid:795f8c8d-fda6-4065-aec6-b3c1dda8e9db)
* section[=].entry[+] = Reference(urn:uuid:8d30c511-64e8-486a-a644-dc34063363e2)
* section[=].entry[+] = Reference(urn:uuid:119f5bbe-d6ee-4fc7-a3b3-061e0ace7bf7)
* section[+].title = "標準12誘導心電図"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#78239-1 "外部参照セクション"
* section[=].entry[0] = Reference(urn:uuid:42b83888-8928-4a6e-b0c4-c4fd10805a8d)
* section[=].entry[+] = Reference(urn:uuid:4a6c2f31-84ec-4331-8d2f-5e213aa4903e)