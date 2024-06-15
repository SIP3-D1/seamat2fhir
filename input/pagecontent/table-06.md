### 表6 作成システムDeviceリソースの仕様

| 要素Lv1 | 要素Lv2 | 多重度 | 型 | 値 | 生理検査レポートCDAとのマッピング<BR>(CD=ClinicalDocument) | 説明 |
|---|---|---|---|---|---|---|
| resourceType |  |  |  | "Device" | /CD/author | Deviceリソースであることを示す。 |
| meta |  | 1..1 | Meta |  |  |  |
|  | lastUpdated | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile | 1..1 | canonical(StructureDefinition) | "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/J<BR>P_Device_SEAMAT_Author" |  | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
| identifier |  | 0..1 | Identifier |  | /CD/author/assignedAuthor/id | 作成システムのID |
|  | system | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/resourceInsta<BR>nce-identifier" |  | 作成すステムIDに対する名前空間識別子。固定値。 |
|  | value | 1..1 | string | "1234678" |  | 作成システムIDの文字列。値は例示。 |
| status |  | 0..1 | code | active |  | 作成システムのレコードがアクティブかどうか。固定値。 |
| manufacturer |  | 0..1 | string | "FUKUDA DENSHI Corp." | /CD/author/assignedAuthor/<BR>representedOrganization/name | 作成システムの製造メーカーの名称。値は例示。 |
| deviceName |  | 0..1 | BackboneElement |  |  |  |
|  | name | 1..1 | string | "FCP-7541" | /CD/author/assignedAuthor/<BR>assignedAuthoringDevice/<BR>manufacturerModelName | 作成システムのモデル名。値は例示。 |
|  | type | 1..1 | code | "model-name" |  | デバイス名の種類。バリューセット（"http://hl7.org/fhir/ValueSet/device-nametype"）からモデル名を表す"model-name"を固定で設定する。 |
| deviceName |  | 0..1 | BackboneElement |  |  |  |
|  | name | 1..1 | string | "ResultSender" | /CD/author/assignedAuthor/<BR>assignedAuthoringDevice/softwareName | 作成システムのソフトウェア名。値は例示。 |
|  | type | 1..1 | code | "other" |  | デバイス名の種類。バリューセット（"http://hl7.org/fhir/ValueSet/device-nametype"）からその他を表す"other"を固定で設定する。 |
