### 表13 Compositionリソースのsectionの仕様

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 要素Lv4 | 多重度 | 型 | 値 | 生理検査レポートCDAとのマッピング<BR>(CD=ClinicalDocument) | 説明 |
|---|---|---|---|---|---|---|---|---|
| section |  |  |  | 0..1 | BackboneElement |  |  |  |
|  | title |  |  | 0..1 | string | "バイタルサイン" | /CD/component/structuredBody/component/section/<BR>title | ○○セクション名のうち○○の部分文字列を設定する。値は例示。 |
|  | code |  |  | 1..1 | CodeableConcept |  | /CD/component/structuredBody/component/section/code |  |
|  |  | coding |  | 1..1 | Coding |  |  |  |
|  |  |  | system | 1..1 | uri | "http://jpfhir.jp/fhir/SEAMAT/CodeSystem/JP_Compos<BR>ition_SEAMAT_SectionCode_CS" | /CD/component/structuredBody/component/section/code/<BR>@codeSystem | 文書のセクションコードシステムの固定値。<BR>検査項目セクションの場合は、JLAC10を表す"urn:oid:1.2.392.200119.4.1005"ないしJJ1017を表す"urn:oid:1.2.392.200119.4.1201"、それ以外の場合は、LOINCを表す"http://jpfhir.jp/fhir/SEAMAT/CodeSystem/<BR>JP_Composition_SEAMAT_SectionCode_CS"固定 |
|  |  |  | code | 1..1 | code | "74728-7" | /CD/component/structuredBody/component/section/code/<BR>@code | セクションコードを設定する。値は例示。 |
|  |  |  | display | 1..1 | string | "バイタルサインセクション" | /CD/component/structuredBody/component/section/code/<BR>@displayName | セクション名を設定する。値は例示。 |
|  | author |  |  | 0..1 | Reference(Practitioner\|Device) |  | /CD/component/structuredBody/component/section/<BR>author | 測定者Practitionerリソースないし測定システムDeviceリソースへの参照。 |
|  |  | reference |  | 1..1 | string | "urn:uuid:fa0a5511-9e07-4fe0-9505-ebf7c9067e57" |  | PractitionerリソースないしDeviceリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
|  | text |  |  | 0..1 | Narrative |  | /CD/component/structuredBody/component/section/text |  |
|  | entry |  |  | 0..* | Reference(Observation \| DocumentReference \| Binary) |  | /CD/component/structuredBody/component/section/<BR>entry | 測定値/解析結果Observationリソースないし外部参照DocumentReferenceリソースないし外部参照Binaryリソースへの参照。 |
|  |  | reference |  | 1..1 | string | "urn:uuid:d4d71934-e535-4029-a4c8-a4d098359e4d" |  | ObservationリソースないしDocumentReferenceリソースないしBinaryリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
