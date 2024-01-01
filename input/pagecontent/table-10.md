#### 表10 検査実施情報Procedureリソースの仕様

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 要素Lv4 | 多重度 | 型 | 値 | 生理検査レポートCDAとのマッピング<BR>(CD=ClinicalDocument) | 説明 |
|---|---|---|---|---|---|---|---|---|
| resourceType |  |  |  |  |  | "Procedure" |  | Procedureリソースであることを示す。 |
| meta |  |  |  | 1..1 | Meta |  |  |  |
|  | lastUpdated |  |  | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile |  |  | 1..1 | canonical(StructureDefinition) | "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/<BR>JP_Procedure_SEAMAT" |  | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
| identifier |  |  |  | 0..1 | Identifier |  |  | <オーダ番号> |
|  | type |  |  | 1..1 | CodeableConcept |  |  |  |
|  |  | coding |  | 1..1 | Coding |  |  |  |
|  |  |  | system | 1..1 | uri | "http://terminology.hl7.org/CodeSystem/v2-0203" |  |  |
|  |  |  | code | 1..1 | code | "PLAC" |  |  |
|  |  |  | display | 0..1 | string | "Placer Identifier" |  |  |
|  | system |  |  | 1..1 | uri | "http://jpfhir.jp/fhir/SEAMAT/IdSystem/placer-orde<BR>r-no" |  |  |
|  | value |  |  | 0..1 | string |  |  |  |
| identifier |  |  |  | 0..1 | Identifier |  |  | <部門管理番号> |
|  | type |  |  | 1..1 | CodeableConcept |  |  |  |
|  |  | coding |  | 1..1 | Coding |  |  |  |
|  |  |  | system | 1..1 | uri | "http://terminology.hl7.org/CodeSystem/v2-0203" |  |  |
|  |  |  | code | 1..1 | code | "FILL" |  |  |
|  |  |  | display | 1..1 | string | "Filler Identifier" |  |  |
|  | system |  |  | 1..1 | uri | "http://jpfhir.jp/fhir/SEAMAT/IdSystem/filler-orde<BR>r-no" |  |  |
|  | value |  |  | 0..1 | string |  |  |  |
| identifier |  |  |  | 0..1 | Identifier |  |  | <データ管理番号> |
|  | system |  |  | 1..1 | uri | "http://jpfhir.jp/fhir/SEAMAT/IdSystem/filler-data<BR>-no/<部門管理番号>" |  |  |
|  | value |  |  | 0..1 | string |  |  |  |
| identifier |  |  |  | 1..1 | Identifier |  |  | この文書の文書ID。 |
|  | system |  |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/documentInsta<BR>nce-identifier" |  | 文書IDに対する名前空間識別子。固定値。 |
|  | value |  |  | 1..1 | string | "1234567890_20231205_LJCS-100D_20231205101112.94.1<BR>4239.1002_20231205112233_100_1" |  | 文書IDの文字列。値は例示。 |
| category |  |  |  | 1..1 | CodeableConcept |  |  |  |
|  | coding |  |  | 1..1 | Coding |  |  |  |
|  |  | system |  | 1..1 | uri | "http://jpfhir.jp/fhir/SEAMAT/CodeSystem/JP_Servic<BR>eRequest_Category_SEAMAT_DataType_CS" |  |  |
|  |  | code |  | 1..1 | code | "LJCS-100D" |  | <データ種別コード><レポート/データフラグ><BR>SEAMATで指定されたデータ種別コードとデータフラグを合成したテキストをセットする。値は例示。 |
|  |  | display |  | 1..1 | string | "心電図検査データ" |  | データ種別コードとデータフラグの名称を合成したテキストをセットする。値は例示。 |
| subject |  |  |  | 1..1 | Reference(Patient) |  |  | 患者情報を表すPatientリソースへの参照。 |
|  | reference |  |  | 1..1 | string | "urn:uuid:77fbc1a7-8e7e-494c-9763-6545a73afcc4" |  | PatientリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
| performed[x] |  |  |  | 1..1 |  |  |  |  |
|  | performedDateTime |  |  | 1..1 | dateTime | "2023-12-05" |  | <検査日><BR>心電図検査の検査日をYYYY-MM-DD形式で指定する。値は例示。 |
| performer |  |  |  | 0..1 | BackboneElement |  |  |  |
|  | actor |  |  | 1..1 | Reference(PractitionerRole) |  |  | 実施者役割PractitionerRoleリソースへの参照。 |
|  |  | reference |  | 1..1 | string | "urn:uuid:58288829-7c0d-45ec-8a5a-99b4d3976a65" |  | PractitionerRoleリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
