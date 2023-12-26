Instance: Inline-Instance-for-GOFSH-GENERATED-ID-1-1
InstanceOf: Composition
Usage: #inline
* meta.lastUpdated = "2023-12-25T20:21:32+09:00"
* meta.profile = "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Composition_EKGReport"
* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "1234567890_20231205_LJCS-100D_20231205101112.94.14239.1002_20231205112233_200_1"
* status = #final
* type = $JP_Composition_SEAMAT_DocumentType_CS#28010-7 "EKG Report"
* category = $JP_Composition_SEAMAT_DocumentType_CS#28010-7 "EKG Report"
* subject = Reference(urn:uuid:77fbc1a7-8e7e-494c-9763-6545a73afcc4)
* date = "2019-03-26T00:43:30+09:00"
* author = Reference(urn:uuid:a78efb38-13d1-448a-ad68-5e28dfbdc306)
* title = "心電図検査レポート"
* confidentiality = #N
* custodian = Reference(urn:uuid:6cd03543-6a5b-4396-ab12-cd3b78171e0c)
* event.period.start = "2023-12-05T13:49:04+09:00"
* event.period.end = "2023-12-05T13:49:04+09:00"
* event.detail = Reference(urn:uuid:fa0c6541-aec6-483f-9b6d-175b5e838bf4)
* section[0].code = $JP_Composition_SEAMAT_SectionCode_CS#52460-3 "患者付帯情報セクション"
* section[=].entry = Reference(urn:uuid:b3ff3f90-182f-41a8-b6dc-c8a8b5bab4e3)
* section[+].title = "バイタルサイン"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#74728-7 "バイタルサインセクション"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tbody><tr>   <td>身長/体重</td>   <td>151.5cm/66.1kg</td></tr></tbody><tbody><tr>   <td>血圧</td>   <td/></tr></tbody></table></div>"
* section[=].entry[0] = Reference(urn:uuid:5dc0d4d4-d291-45d4-8f83-e20d6a991680)
* section[=].entry[+] = Reference(urn:uuid:f2bd4ddc-c324-4bcd-8e7f-194e80c55086)
* section[=].entry[+] = Reference(urn:uuid:7009c440-079f-4775-b281-7e754b9f382e)
* section[+].title = "検査記述"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#70004-7 "検査記述セクション"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tbody><tr>   <td>安静時</td></tr></tbody></table></div>"
* section[=].entry = Reference(urn:uuid:58672cea-9be2-4095-84d1-711661f8e8b4)
* section[+].title = "計測値"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#29273-0 "計測値セクション"
* section[=].author = Reference(urn:uuid:fa0a5511-9e07-4fe0-9505-ebf7c9067e57)
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tbody><tr>   <td>心拍数</td>   <td>93bpm</td></tr><tr>   <td>RR間隔</td>   <td>644ms</td></tr><tr>   <td>PR間隔</td>   <td>216ms</td></tr><tr>   <td>QRS間隔</td>   <td>87ms</td></tr><tr>   <td>QT間隔</td>   <td>373ms</td></tr><tr>   <td>QTc(B/F)間隔</td>   <td>464/431ms</td></tr><tr>   <td>P/QRS/T軸</td>   <td>0/5/36°</td></tr><tr>   <td>SV1</td>   <td>0.42mV</td></tr><tr>   <td>RV5</td>   <td>1.50mV</td></tr><tr>   <td>RV6</td>   <td>0.91mV</td></tr><tr>   <td>RV5+SV1</td>   <td>1.92mV</td></tr><tr>   <td>RV6+SV1</td>   <td>1.33mV</td></tr></tbody></table></div>"
* section[=].entry[0] = Reference(urn:uuid:0321ce31-8088-4ffc-a26c-a707c0b06f57)
* section[=].entry[+] = Reference(urn:uuid:b98bd02e-fda9-4879-80cf-496c996fcb02)
* section[=].entry[+] = Reference(urn:uuid:412b0149-ee6c-4d64-b611-c91ede4702d4)
* section[=].entry[+] = Reference(urn:uuid:a5b48819-9ac4-4e6c-b2ad-f92bccedb4fd)
* section[=].entry[+] = Reference(urn:uuid:b835ed8b-7f23-408e-808c-5eb5a873f235)
* section[=].entry[+] = Reference(urn:uuid:a4fc63b2-a75a-43d9-9a6f-09e884fa732d)
* section[=].entry[+] = Reference(urn:uuid:5ad466f2-c753-4370-987e-92f27902725f)
* section[=].entry[+] = Reference(urn:uuid:3df47d0c-4087-4f5a-8556-514612d04f21)
* section[=].entry[+] = Reference(urn:uuid:d2641241-0358-4d6e-ab25-2523647d35df)
* section[=].entry[+] = Reference(urn:uuid:77e7da2d-ab5b-4328-9d20-bb282604ce9c)
* section[=].entry[+] = Reference(urn:uuid:c388d74b-a320-48ad-a6dd-81e8104fe4c5)
* section[=].entry[+] = Reference(urn:uuid:5cd87d97-1464-4e5b-9c8b-4a0681b998af)
* section[=].entry[+] = Reference(urn:uuid:39a417f1-5e85-4cae-95ad-2220e725eee7)
* section[=].entry[+] = Reference(urn:uuid:7b55ed63-6afc-4701-a250-bbbe6f96f8ba)
* section[+].title = "解析結果"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#64110-0 "解析結果セクション"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tbody><tr>   <td>所見</td></tr><tr>   <td>871-6</td>   <td/></tr><tr>   <td>632-6</td>   <td>:Ⅱ</td></tr><tr>   <td>701-4</td>   <td>:V2,V3</td></tr></tbody><tbody><tr>   <td>ミネソタコード</td></tr><tr>   <td>8-3-2</td>   <td>7-5</td>   <td>1-2-8</td>   <td>4-2</td>   <td>9-4-2</td></tr></tbody><tbody><tr>   <td>グレード</td></tr><tr>   <td>異常の心電図</td></tr></tbody><tbody><tr>   <td>負荷判定</td></tr><tr>   <td>負荷－不可</td></tr></tbody></table></div>"
* section[=].entry[0] = Reference(urn:uuid:19be5fcf-9dba-40cf-8286-e5335cc10915)
* section[=].entry[+] = Reference(urn:uuid:991820c5-1efa-4e4f-9294-2748c1251aef)
* section[=].entry[+] = Reference(urn:uuid:dee6ad4e-0f9b-47e8-af7f-0e6404e3b183)
* section[=].entry[+] = Reference(urn:uuid:68f4f925-6cd3-4406-8571-5fe322ec5835)
* section[=].entry[+] = Reference(urn:uuid:27806987-462b-475c-9a2b-2ad4ff954d20)
* section[=].entry[+] = Reference(urn:uuid:186149a8-cb3f-4c05-b3b4-7d54dead70a3)
* section[=].entry[+] = Reference(urn:uuid:b777d302-2501-4a5b-9067-b9182e66661d)
* section[=].entry[+] = Reference(urn:uuid:daf0acc5-b7cc-4315-a1da-0d1e72ec4dbf)
* section[=].entry[+] = Reference(urn:uuid:4f4d3acf-95be-4c11-94ce-41a75f2725d0)
* section[=].entry[+] = Reference(urn:uuid:c6890f0b-8fcb-4274-9685-87aad77dcb43)
* section[+].title = "標準12誘導心電図"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#78239-1 "外部参照セクション"
* section[=].entry[0] = Reference(urn:uuid:d4d71934-e535-4029-a4c8-a4d098359e4d)
* section[=].entry[+] = Reference(urn:uuid:b87c03cd-6303-4312-95a1-df21f2fe8974)