### 表24 JP_Procedure_PCIOutcomeDetail拡張の仕様

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 心カテレポートCDAとのマッピング | 説明 |
|---|---|---|---|---|---|---|---|
| extension |  |  | 1..* | Extension |  |  | PCI処置後の状態を記述するための拡張。PCI処置の80239-7<Stenosis_Post>,81001-0<TimiGrade_Post>を記述したObservationをReference型で参照する。 |
|  | url |  | 1..1 | uri | "http://jpfhir.jp/fhir/SEAMAT/Extension/StructureD<BR>efinition/JP_Procedure_PCIOutcomeDetail" |  | この拡張を識別する固定値。 |
|  | valueReference |  | 1..1 | Reference(JP_Observation_SEAMAT) |  |  |  |
|  |  | reference | 1..1 | string | "urn:uuid:176a63d0-4dd8-4085-b444-a5d4c1e252c3" |  | ObservationリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
