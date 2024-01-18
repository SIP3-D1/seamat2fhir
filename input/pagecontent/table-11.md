### 表11 検査実施者役割PractitionerRoleリソースの仕様

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 生理検査レポートCDAとのマッピング<BR>(CD=ClinicalDocument) | 説明 |
|---|---|---|---|---|---|---|---|
| resourceType |  |  |  |  | "PractitionerRole" | /CD/documentationOf/serviceEvent | PractitionerRoleリソースであることを示す。 |
| meta |  |  | 1..1 | Meta |  |  |  |
|  | lastUpdated |  | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile |  | 1..1 | canonical(StructureDefinition) | "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/<BR>JP_PractitionerRole_SEAMAT_Performer" |  | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
| active |  |  | 0..1 | boolean | true |  | アクティブなレコードであることを示す固定値。 |
| period |  |  | 0..1 | Period |  | /CD/documentationOf/serviceEvent/<BR>effectiveTime | この役割の有効期間 |
|  | start |  | 0..1 | dateTime | "2023-12-21" | /CD/documentationOf/serviceEvent/<BR>effectiveTime/low | 有効期間の開始日。値は例示。 |
|  | end |  | 0..1 | dateTime | "2023-12-31" | /CD/documentationOf/serviceEvent/<BR>effectiveTime/high | 有効期間の終了日。値は例示。 |
| practitioner |  |  | 0..1 | Reference(Practitioner) |  | /CD/documentationOf/serviceEvent/<BR>performer/assignedEntity | 検査実施者Practitionerリソースへの参照。 |
|  | reference | reference | 1..1 | string | "urn:uuid:f83bbdac-8aab-48fa-96e1-6fa2c73d66d1" |  | PractitionerリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
| code |  |  | 0..1 | CodeableConcept |  | /CD/documentationOf/serviceEvent/<BR>performer/functionCode | この職員の役割コード |
|  | coding |  | 1..1 | Coding |  |  |  |
|  |  | system | 1..1 | uri |  | /CD/documentationOf/serviceEvent/<BR>performer/functionCode/@codeSystem |  |
|  |  | code | 1..1 | code |  | /CD/documentationOf/serviceEvent/<BR>performer/functionCode/@code |  |
|  |  | display | 1..1 | string |  | /CD/documentationOf/serviceEvent/<BR>performer/functionCode/@displayName |  |
