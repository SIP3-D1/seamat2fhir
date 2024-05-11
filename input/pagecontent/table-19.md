### 表19 Bundleリソースの仕様（心臓カテーテル検査レポート）

| 要素Lv1 | 要素Lv2 | 多重度 | 型 | 値 | 心カテレポートCDAとのマッピング | 説明 |
|---|---|---|---|---|---|---|
| resourceType |  |  |  | "Bundle" |  | Bundleリソースであることを示す。 |
| meta |  | 1..1 | Meta |  |  |  |
|  | lastUpdated | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile | 1..1 | canonical(StructureDefinition) | "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/<BR>JP_Bundle_CCSReport" |  | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
| identifier |  | 1..1 | Identifier |  |  | この文書の文書ID。 |
|  | system | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/documentInsta<BR>nce-identifier" |  | 文書IDの名前空間を表すURI。固定値。 |
|  | value | 1..1 | string | "1234567890_20231205_LJCS-300R_20231205101112.94.1<BR>4239.1002_20231205112233_200_1" |  | SS-MIX2拡張ストレージのコンテンツフォルダ名を以下の形式で指定する。値は例示。<BR><患者ID>_<診療日>_<データ種別>_<特定キー>_<発生日時>_<診療科コード>_<コンディションフラグ> |
| type |  | 1..1 | code | "document" |  | BundleリソースがDocumentタイプであることを示す。 |
| timestamp |  | 1..1 | instant |  |  | Bundleリソースの生成日時。 |
| entry |  | 1..1 | BackboneElement |  |  |  |
|  | fullUrl | 1..1 | uri | "urn:uuid:36a8b456-c875-4582-b19d-2dbe07ea3802" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  | resource | 1..1 | Composition |  |  | 文書の目次情報およびテキストコンテンツ。 |
| entry |  | 1..1 | BackboneElement |  |  |  |
|  | fullUrl | 1..1 | uri | "urn:uuid:77fbc1a7-8e7e-494c-9763-6545a73afcc4" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  | resource | 1..1 | Patient |  | recordTarget/patientRole/<BR>id, addr, telecom, patient | 対象患者の情報。 |
| entry |  | 0..* | BackboneElement |  |  |  |
|  | fullUrl | 1..1 | uri | "urn:uuid:86ca4d7f-f7d1-4185-8f51-10f40e95189c" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  | resource | 1..1 | Organization |  | recordTarget/patientRole/providerOrganization | 対象患者の所属科の情報。 |
| entry |  | 0..1 | BackboneElement |  |  |  |
|  | fullUrl | 1..1 | uri | "urn:uuid:a78efb38-13d1-448a-ad68-5e28dfbdc306" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  | resource | 1..1 | Practitioner |  | author/assignedAuthor/<BR>id, addr, telecom, assignedPerson | 文書の作成者の情報。 |
| entry |  | 0..1 | BackboneElement |  |  |  |
|  | fullUrl | 1..1 | uri | "urn:uuid:a78efb38-13d1-448a-ad68-5e28dfbdc306" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  | resource | 1..1 | Device |  | author/assignedAuthor/<BR>id, assignedAuthoringDevice | 文書の作成システムの情報。 |
| entry |  | 0..1 | BackboneElement |  |  |  |
|  | fullUrl | 1..1 | uri | "urn:uuid:f2bd4ddc-c324-4bcd-8e7f-194e80c55086" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  | resource | 1..1 | Organization |  | author/assignedAuthor/representedOrganization | 文書の作成医療機関の情報。 |
| entry |  | 1..1 | BackboneElement |  |  |  |
|  | fullUrl | 1..1 | uri | "urn:uuid:6cd03543-6a5b-4396-ab12-cd3b78171e0c" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  | resource | 1..1 | Organization |  | custodian/assignedCustodian/representedCustodianOrganization | 文書の管理医療機関の情報。 |
| entry |  | 0..1 | BackboneElement |  |  |  |
|  | fullUrl | 1..1 | uri | "urn:uuid:7009c440-079f-4775-b281-7e754b9f382e" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  | resource | 1..1 | Practitioner |  | authenticator/assignedEntity | 文書内容について責任を持つ職員の情報。 |
| entry |  | 0..1 | BackboneElement |  |  |  |
|  | fullUrl | 1..1 | uri | "urn:uuid:fa0c6541-aec6-483f-9b6d-175b5e838bf4" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  | resource | 1..1 | Procedure |  |  | 文書の元になった検査の実施情報。 |
| entry |  | 0..1 | BackboneElement |  |  |  |
|  | fullUrl | 1..1 | uri | "urn:uuid:91278474-489b-48b9-a81b-62a84529a1fe" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  | resource | 1..1 | PractitionerRole |  | documentationOf/serviceEvent/performer/functionCode | 文書の元になった検査の実施者の役割の情報。 |
| entry |  | 0..1 | BackboneElement |  |  |  |
|  | fullUrl | 1..1 | uri | "urn:uuid:4a59093e-b1c3-4c1d-a70c-0b968fac0747" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  | resource | 1..1 | Practitioner |  | documentationOf/serviceEvent/performer/assignedEntity | 文書の元になった検査の実施者の情報。 |
| entry |  | 0..* | BackboneElement |  |  |  |
|  | fullUrl | 1..1 | uri | "urn:uuid:58672cea-9be2-4095-84d1-711661f8e8b4" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  | resource | 1..1 | Practitioner |  | component/structuredBody/component/section/author/assignedAuthor/<BR>id, addr, telecom, assignedPerson | 測定値や解析結果の測定者の情報。 |
| entry |  | 0..* | BackboneElement |  |  |  |
|  | fullUrl | 1..1 | uri | "urn:uuid:fa0a5511-9e07-4fe0-9505-ebf7c9067e57" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  | resource | 1..1 | Device |  | component/structuredBody/component/section/author/assignedAuthor/<BR>id, assignedAuthoringDevice | 測定値や解析結果の測定システムの情報。 |
| entry |  | 0..* | BackboneElement |  |  |  |
|  | fullUrl | 1..1 | uri | "urn:uuid:0321ce31-8088-4ffc-a26c-a707c0b06f57" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  | resource | 1..1 | Observation |  | component/structuredBody/component/section/entry/observation | 年齢、過去の血行再建、術前情報、検査情報などの情報。 |
| entry |  | 0..* | BackboneElement |  |  |  |
|  | fullUrl | 1..1 | uri | "urn:uuid:d4d71934-e535-4029-a4c8-a4d098359e4d" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  | resource | 1..1 | Condiiton |  | component/structuredBody/component/section/entry/observation | 併存疾患情報、冠危険因子、循環器疾患既往歴、PCI合併症の情報。 |
| entry |  | 0..* | BackboneElement |  |  |  |
|  | fullUrl | 1..1 | uri | "urn:uuid:48d9a025-d288-4359-be48-ec7f8617c587" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  | resource | 1..1 | Procedure |  | component/structuredBody/component/section/entry/observation | PCI処置の情報。 |
| entry |  | 0..* | BackboneElement |  |  |  |
|  | fullUrl | 1..1 | uri | "urn:uuid:b98bd02e-fda9-4879-80cf-496c996fcb02" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  | resource | 1..1 | Device |  | component/structuredBody/component/section/entry/observation | PCI使用機器の情報。 |
