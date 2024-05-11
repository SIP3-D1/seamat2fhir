### 表23 PCI使用機器Deviceリソースの仕様

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 心カテレポートCDAとのマッピング | 説明 |
|---|---|---|---|---|---|---|---|
| resourceType |  |  |  |  | "Device" |  | Deviceリソースであることを示す。 |
| meta |  |  | 1..1 | Meta |  |  |  |
|  | lastUpdated |  | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile |  | 1..1 | canonical(StructureDefinition) | http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/J<BR>P_Device_PCI |  | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
| identifier |  |  | 0..1 | Identifier |  |  | 使用機器のID |
|  | system |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/resourceInsta<BR>nce-identifier" |  | 使用機器IDに対する名前空間識別子。固定値。 |
|  | value |  | 1..1 | string | "0009999992_20240115_LJCS-300R_20240117185921.0227<BR>990001.2024011417332568.2024011417332568_202401171<BR>85921000_-_1.61" |  | 使用機器IDの文字列。値は例示。 |
| status |  |  | 0..1 | code | active |  | 使用機器のレコードがアクティブかどうか。固定値。 |
| type |  |  | 0..1 | CodeableConcept |  |  | 使用機器の種別。PCI処置の81002-8<使用機器>の情報をセットする。 |
|  | coding |  | 1..1 | Coding |  |  |  |
|  |  | system | 1..1 | uri | "http://loinc.org" |  | LOINCコードを意味する固定値。 |
|  |  | code | 1..1 | code | "LA26041-6" |  | 使用機器を表すLOINCコード。値は例示。 |
|  |  | display | 1..1 | string | "バルーン" |  | 使用機器のLOINCコードに対する名称。値は例示。 |
| patient |  |  | 0..1 | Reference(JP_Patient_SEAMAT) |  |  |  |
|  | reference |  | 1..1 | string | "urn:uuid:77fbc1a7-8e7e-494c-9763-6545a73afcc4" |  | PatientリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |

