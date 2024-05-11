### 表22 Conditionリソースの仕様（心臓カテーテル検査疾患情報）

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 要素Lv4 | 多重度 | 型 | 値 | 心カテレポートCDAとのマッピング | 説明 |
|---|---|---|---|---|---|---|---|---|
| resourceType |  |  |  |  |  | ”Condition" |  |  |
| meta |  |  |  | 1..1 | Meta |  |  |  |
|  | lastUpdated |  |  | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile |  |  | 1..1 | canonical(StructureDefinition) | "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/<BR>JP_Condition_CCS" |  | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
| code |  |  |  | 0..1 | CodeableConcept |  |  |  |
|  | coding |  |  | 1..1 | Coding |  |  |  |
|  |  | system |  | 1..1 | uri | "http://loinc.org" |  | LOINCコードを意味する固定値。 |
|  |  | code |  | 1..1 | code | "76642-8" |  | PCI処置を表すLOINCコード。値は固定。 |
|  |  | display |  | 1..1 | string | "Percutaneous coronary intervention study" |  | PCI処置のLOINCコードに対する名称。値は固定。 |
| bodySite |  |  |  | 0..* | CodeableConcept |  |  |  |
| subject |  |  |  | 1..1 | Reference(JP_Patient_SEAMAT) |  |  | 患者情報を表すPatientリソースへの参照。 |
|  | reference |  |  | 1..1 | string | "urn:uuid:77fbc1a7-8e7e-494c-9763-6545a73afcc4" |  | PatientリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
