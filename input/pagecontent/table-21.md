### 表21 Procedureリソースの仕様（PCI処置情報）

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 要素Lv4 | 多重度 | 型 | 値 | 心カテレポートCDAとのマッピング | 説明 |
|---|---|---|---|---|---|---|---|---|
| resourceType |  |  |  |  |  | "Procedure" |  | Procedureリソースであることを示す。 |
| meta |  |  |  | 1..1 | Meta |  |  |  |
|  | lastUpdated |  |  | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile |  |  | 1..1 | canonical(StructureDefinition) | "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/<BR>JP_Procedure_PCI" |  | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
| status |  |  |  | 1..1 | code | "completed" |  | 検査のステータスを表すコード。PCI処置の80727-1<実施有無>の値から変換する。 |
| code |  |  |  | 1..1 | CodeableConcept |  |  |  |
|  | coding |  |  | 1..1 | Coding |  |  |  |
|  |  | system |  | 1..1 | uri | "http://loinc.org" |  | LOINCコードを意味する固定値。 |
|  |  | code |  | 1..1 | code | "76642-8" |  | PCI処置を表すLOINCコード。値は固定。 |
|  |  | display |  | 1..1 | string | "Percutaneous coronary intervention study" |  | PCI処置のLOINCコードに対する名称。値は固定。 |
| subject |  |  |  | 1..1 | Reference(JP_Patient_SEAMAT) |  |  | 患者情報を表すPatientリソースへの参照。 |
|  | reference |  |  | 1..1 | string | "urn:uuid:77fbc1a7-8e7e-494c-9763-6545a73afcc4" |  | PatientリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
| reasonReference |  |  |  | 0..* | Reference(JP_Observation_SEAMAT) |  |  |  |
|  | reference |  |  | 1..1 | string | "urn:uuid:1de4f658-55e1-4bce-a361-749abbff685d" |  | PCI処置前の状態。PCI処置の80728-9<Stenosis_Pre>,81000-2<TimiGrade_Pre>、80729-7<病変性状>、80730-5<病変分類>を記述したObservationをReference型で参照する。値は例示。 |
| bodySite |  |  |  | 0..* | CodeableConcept |  |  | PCI処置の実施部位。PCI処置の80999-6<部位>の値を使用する。 |
|  | coding |  |  | 1..1 | Coding |  |  |  |
|  |  | system |  | 1..1 | uri | "http://loinc.org" |  | LOINCコードを意味する固定値。 |
|  |  | code |  | 1..1 | code | "LA24463-4" |  | 値は例示。 |
|  |  | display |  | 1..1 | string | "5-6" |  | 値は例示。 |
| outcome |  |  |  | 0..1 | CodeableConcept |  |  | PCI処置の実施結果。PCI処置の67544-7<成否>の値を使用する |
|  | extension |  |  | 0..* |  |  |  | PCI処置後の状態。PCI処置の80239-7<Stenosis_Post>,81001-0<TimiGrade_Post>を記述したObservationをReference型で参照する。 |
|  |  | url |  | 1..1 | uri | "http://jpfhir.jp/fhir/SEAMAT/Extension/StructureD<BR>efinition/JP_Procedure_PCIOutcomeDetail" |  | 値は例示。 |
|  |  | valueReference |  | 1..1 | Reference(JP_Observation_SEAMAT) |  |  | 値は例示。 |
|  |  |  | reference | 1..1 | string | "urn:uuid:176a63d0-4dd8-4085-b444-a5d4c1e252c3" |  |  |
|  | coding |  |  | 1..1 | Coding |  |  |  |
|  |  | system |  | 1..1 | uri | "http://loinc.org" |  | LOINCコードを意味する固定値。 |
|  |  | code |  | 1..1 | code | "LA33-6" |  | 値は例示。 |
|  |  | display |  | 1..1 | string | "成功" |  | 値は例示。 |
| focalDevice |  |  |  | 0..* | BackboneElement |  |  |  |
|  | action |  |  | 0..1 | CodeableConcept |  |  |  |
|  | manipulated |  |  | 1..1 | Reference(JP_Device_PCI) |  |  | PCI処置の使用機器。PCI処置の81002-8<使用機器>を記述したDeviceリソースを参照する。 |
|  |  | reference |  | 1..1 | string | "urn:uuid:41466894-4e76-4f58-b7f2-f5a6ffa73ea8" |  | 値は例示。 |
