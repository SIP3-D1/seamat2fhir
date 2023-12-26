Instance: Inline-Instance-for-GOFSH-GENERATED-ID-0-1
InstanceOf: Composition
Usage: #inline
* meta.lastUpdated = "2023-12-08T13:44:06+09:00"
* meta.profile = "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Composition_EKGReport"
* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "1234567890_20231205_LJCS-100D_20231205101112...1002_20231205112233_100_1"
* status = #final
* type = $JP_Composition_SEAMAT_DocumentType_CS#28010-7 "EKG Report"
* category = $JP_Composition_SEAMAT_DocumentType_CS#28010-7 "EKG Report"
* subject = Reference(urn:uuid:308717bd-34a0-459f-9a1a-88367ab1e92c)
* date = "2019-04-03T02:08:53+09:00"
* author = Reference(urn:uuid:e6597c74-c7e0-46ba-85fd-826eab41b01f)
* title = "心電図検査レポート"
* confidentiality = #N
* custodian = Reference(urn:uuid:72a73fb7-c725-4d83-b79c-7d1f395eee22)
* event.period.start = "2023-12-05T11:49:07+09:00"
* event.period.end = "2023-12-05T11:49:07+09:00"
* event.detail = Reference(urn:uuid:9f78b571-a3ff-4230-9d4a-5865089fe2d4)
* section[0].code = $JP_Composition_SEAMAT_SectionCode_CS#52460-3 "患者付帯情報セクション"
* section[=].entry = Reference(urn:uuid:23963f1b-f4fe-4029-a0f7-858adc4530be)
* section[+].title = "バイタルサイン"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#74728-7 "バイタルサインセクション"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tbody><tr>   <td>身長/体重</td>   <td>150.5cm/75.0kg</td></tr></tbody><tbody><tr>   <td>血圧</td>   <td/></tr></tbody></table></div>"
* section[=].entry[0] = Reference(urn:uuid:84028424-d9b9-423c-9cf3-173c2aa22bbd)
* section[=].entry[+] = Reference(urn:uuid:7a818ab3-a730-4a08-b70d-a4add9fcc186)
* section[=].entry[+] = Reference(urn:uuid:c2aaf206-1127-4303-a262-cd776a14da52)
* section[+].title = "検査記述"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#70004-7 "検査記述セクション"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tbody><tr>   <td>安静時</td></tr></tbody></table></div>"
* section[=].entry = Reference(urn:uuid:9682d3e6-df7d-4649-9b7b-69b1ce2b7ddb)
* section[+].title = "計測値"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#29273-0 "計測値セクション"
* section[=].author = Reference(urn:uuid:1028d7a5-979a-45ab-a0df-8a626a461da3)
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tbody><tr>   <td>心拍数</td>   <td>89bpm</td></tr><tr>   <td>RR間隔</td>   <td>667ms</td></tr><tr>   <td>PR間隔</td>   <td>133ms</td></tr><tr>   <td>QRS間隔</td>   <td>85ms</td></tr><tr>   <td>QT間隔</td>   <td>352ms</td></tr><tr>   <td>QTc(B/F)間隔</td>   <td>431/402ms</td></tr><tr>   <td>P/QRS/T軸</td>   <td>-5/34/0°</td></tr><tr>   <td>SV1</td>   <td>0.74mV</td></tr><tr>   <td>RV5</td>   <td>0.96mV</td></tr><tr>   <td>RV6</td>   <td>0.89mV</td></tr><tr>   <td>RV5+SV1</td>   <td>1.70mV</td></tr><tr>   <td>RV6+SV1</td>   <td>1.63mV</td></tr></tbody></table></div>"
* section[=].entry[0] = Reference(urn:uuid:30a78563-9c9a-4281-bf04-6a78bb2dce59)
* section[=].entry[+] = Reference(urn:uuid:23808d90-03fa-43e4-b308-6dbc48390aad)
* section[=].entry[+] = Reference(urn:uuid:d6c13e7c-c716-4507-826d-64ba558ef4f8)
* section[=].entry[+] = Reference(urn:uuid:77d57c2b-ad2d-48ea-b572-3e180ba2d23d)
* section[=].entry[+] = Reference(urn:uuid:624c1f7f-5506-4eae-8f33-5d21108258e2)
* section[=].entry[+] = Reference(urn:uuid:54854c8f-46e5-40d5-9781-1bfac77ab2e7)
* section[=].entry[+] = Reference(urn:uuid:26b39906-565d-482d-8fb6-93f6b33d11ee)
* section[=].entry[+] = Reference(urn:uuid:5ce059be-7913-41fd-9e4f-0c62cd872968)
* section[=].entry[+] = Reference(urn:uuid:fb4bafa6-d095-4d20-b313-a9b711af1594)
* section[=].entry[+] = Reference(urn:uuid:0ace0582-ae64-496d-bef3-1d2f313f9bdf)
* section[=].entry[+] = Reference(urn:uuid:5c62a13b-ff3c-4ef5-a938-06b938611845)
* section[=].entry[+] = Reference(urn:uuid:7c8f3786-baa4-43b1-9f61-8f634084e99f)
* section[=].entry[+] = Reference(urn:uuid:a2e76433-d9fe-46a1-93c1-a177c6a872de)
* section[=].entry[+] = Reference(urn:uuid:939ec48f-4091-4958-9328-4b3ea8713ad5)
* section[+].title = "解析結果"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#64110-0 "解析結果セクション"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tbody><tr>   <td>所見</td></tr><tr>   <td>101-0</td>   <td/></tr></tbody><tbody><tr>   <td>ミネソタコード</td></tr><tr>   <td>9-4-1</td></tr></tbody><tbody><tr>   <td>グレード</td></tr><tr>   <td>正常範囲内</td></tr></tbody><tbody><tr>   <td>負荷判定</td></tr><tr>   <td>負荷－可</td></tr></tbody></table></div>"
* section[=].entry[0] = Reference(urn:uuid:2046c473-337e-4825-ad55-ddacc4370b28)
* section[=].entry[+] = Reference(urn:uuid:48afa0d6-11c8-44e3-8958-f8ebcdcaef19)
* section[=].entry[+] = Reference(urn:uuid:8682bc84-0a41-473c-b4f9-878678b8602f)
* section[=].entry[+] = Reference(urn:uuid:1aa76bee-68c9-4263-9d82-77314fcf9eae)
* section[+].title = "標準12誘導心電図"
* section[=].code = $JP_Composition_SEAMAT_SectionCode_CS#78239-1 "外部参照セクション"
* section[=].entry[0] = Reference(urn:uuid:f73353be-1de5-4208-89d6-e492d23af817)
* section[=].entry[+] = Reference(urn:uuid:ad984ebc-626c-418c-8bde-d17ab9b45220)