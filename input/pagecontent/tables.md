### 表1 Bundleリソースの仕様

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 生理検査レポートCDAとのマッピング<BR>(CD=ClinicalDocument) | 説明 |
|---|---|---|---|---|---|---|---|
| resourceType |  |  |  |  | "Bundle" |  | Bundleリソースであることを示す。 |
| meta |  |  | 1..1 | Meta |  |  |  |
|  | lastUpdated |  | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile |  | 1..1 | canonical(StructureDefinition) | "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/<BR>JP_Bundle_EKGReport" |  | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
|  identifier |  |  |  | 0..1 |  |  | この文書の文書ID。 |
|  | system |  |  |  | "http://jpfhir.jp/fhir/core/IdSystem/documentInsta<BR>nce-identifier" |  | 文書IDの名前空間を表すURI。固定値。 |
|  | value |  |  |  | "1234567890_20231205_LJCS-100D_20231205101112.94.1<BR>4239.1002_20231205112233_200_1" | /CD/SS-MIX2拡張ストレージのコンテンツフォルダ | SS-MIX2拡張ストレージのコンテンツフォルダ名を以下の形式で指定する。値は例示。<BR><患者ID>_<診療日>_<データ種別>_<特定キー>_<発生日時>_<診療科コード>_<コンディションフラグ> |
|  type |  |  | 1..1 | code | "document" |  | BundleリソースがDocumentタイプであることを示す。 |
|  timestamp |  |  | 1..1 | instant |  | /CD/Bundle生成日時 | Bundleリソースの生成日時。 |
|  entry |  |  | 1..1 | BackboneElement |  |  |  |
|  |  fullUrl |  | 1..1 | uri | "urn:uuid:36a8b456-c875-4582-b19d-2dbe07ea3802" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  |  resource |  | 1..1 | Resource | Compositionリソース |  | 文書の目次情報およびテキスト情報。 |
|  entry |  |  | 1..1 | BackboneElement |  |  |  |
|  |  fullUrl |  | 1..1 | uri | "urn:uuid:77fbc1a7-8e7e-494c-9763-6545a73afcc4" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  |  resource |  | 1..1 | Resource | Patientリソース | /CD/recordTarget/patientRole/<BR>id, addr, telecom, patient | 対象患者の情報。 |
|  entry |  |  | 0..* | BackboneElement |  |  |  |
|  |  fullUrl |  | 1..1 | uri | "urn:uuid:86ca4d7f-f7d1-4185-8f51-10f40e95189c" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  |  resource |  | 1..1 | Resource | 所属科Organizationリソース | /CD/recordTarget/patientRole/providerOrganization | 対象患者の所属科の情報。 |
|  entry |  |  | 0..1 | BackboneElement |  |  |  |
|  |  fullUrl |  | 1..1 | uri | "urn:uuid:a78efb38-13d1-448a-ad68-5e28dfbdc306" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  |  resource |  | 1..1 | Resource | 作成者Practitionerリソース | /CD/author/assignedAuthor/<BR>id, addr, telecom, assignedPerson | 文書の作成者の情報。 |
|  entry |  |  | 0..1 | BackboneElement |  |  |  |
|  |  fullUrl |  | 1..1 | uri | "urn:uuid:a78efb38-13d1-448a-ad68-5e28dfbdc306" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  |  resource |  | 1..1 | Resource | 作成システムDeviceリソース | /CD/author/assignedAuthor/<BR>id, assignedAuthoringDevice | 文書の作成システムの情報。 |
|  entry |  |  | 0..1 | BackboneElement |  |  |  |
|  |  fullUrl |  | 1..1 | uri | "urn:uuid:f2bd4ddc-c324-4bcd-8e7f-194e80c55086" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  |  resource |  | 1..1 | Resource | 作成医療機関Organizationリソース | /CD/author/assignedAuthor/representedOrganization | 文書の作成医療機関の情報。 |
|  entry |  |  | 1..1 | BackboneElement |  |  |  |
|  |  fullUrl |  | 1..1 | uri | "urn:uuid:6cd03543-6a5b-4396-ab12-cd3b78171e0c" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  |  resource |  | 1..1 | Resource | 管理医療機関Organizationリソース | /CD/custodian/assignedCustodian/<BR>representedCustodianOrganization | 文書の管理医療機関の情報。 |
|  entry |  |  | 0..1 | BackboneElement |  |  |  |
|  |  fullUrl |  | 1..1 | uri | "urn:uuid:7009c440-079f-4775-b281-7e754b9f382e" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  |  resource |  | 1..1 | Resource | 文書内容責任者Practitionerリソース | /CD/authenticator/assignedEntity | 文書内容について責任を持つ職員の情報。 |
|  entry |  |  | 0..1 | BackboneElement |  |  |  |
|  |  fullUrl |  | 1..1 | uri | "urn:uuid:fa0c6541-aec6-483f-9b6d-175b5e838bf4" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  |  resource |  | 1..1 | Resource | 検査実施情報Procedureリソース | /CD/SS-MIX2拡張ストレージのコンテンツフォルダ | 文書の元になった検査の実施情報。 |
|  entry |  |  | 0..1 | BackboneElement |  |  |  |
|  |  fullUrl |  | 1..1 | uri | "urn:uuid:91278474-489b-48b9-a81b-62a84529a1fe" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  |  resource |  | 1..1 | Resource | 検査実施者役割PractitionerRoleリソース | /CD/documentationOf/serviceEvent/performer/<BR>functionCode | 文書の元になった検査の実施者の役割の情報。 |
|  entry |  |  | 0..1 | BackboneElement |  |  |  |
|  |  fullUrl |  | 1..1 | uri | "urn:uuid:4a59093e-b1c3-4c1d-a70c-0b968fac0747" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  |  resource |  | 1..1 | Resource | 検査実施者Practitionerリソース | /CD/documentationOf/serviceEvent/performer/<BR>assignedEntity | 文書の元になった検査の実施者の情報。 |
|  entry |  |  | 0..* | BackboneElement |  |  |  |
|  |  fullUrl |  | 1..1 | uri | "urn:uuid:58672cea-9be2-4095-84d1-711661f8e8b4" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  |  resource |  | 1..1 | Resource | 測定者Practitionerリソース | /CD/component/structuredBody/component/section/<BR>author/assignedAuthor/<BR>id, addr, telecom, assignedPerson | 測定値や解析結果の測定者の情報。 |
|  entry |  |  | 0..* | BackboneElement |  |  |  |
|  |  fullUrl |  | 1..1 | uri | "urn:uuid:fa0a5511-9e07-4fe0-9505-ebf7c9067e57" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  |  resource |  | 1..1 | Resource | 測定システムDeviceリソース | /CD/component/structuredBody/component/section/<BR>author/assignedAuthor/<BR>id, assignedAuthoringDevice | 測定値や解析結果の測定システムの情報。 |
|  entry |  |  | 0..* | BackboneElement |  |  |  |
|  |  fullUrl |  | 1..1 | uri | "urn:uuid:0321ce31-8088-4ffc-a26c-a707c0b06f57" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  |  resource |  | 1..1 | Resource | 測定結果/解析結果Observationリソース | /CD/component/structuredBody/component/section/<BR>entry/observation | 年齢、バイタルサイン、測定値、解析結果などの情報。 |
|  entry |  |  | 0..* | BackboneElement |  |  |  |
|  |  fullUrl |  | 1..1 | uri | "urn:uuid:d4d71934-e535-4029-a4c8-a4d098359e4d" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  |  resource |  | 1..1 | Resource | 外部参照DocumentReferenceリソース | /CD/component/structuredBody/component/section/<BR>entry/observation/reference/externalDocument | 外部参照ドキュメントの情報。 |
|  entry |  |  | 0..* | BackboneElement |  |  |  |
|  |  fullUrl |  | 1..1 | uri | "urn:uuid:b98bd02e-fda9-4879-80cf-496c996fcb02" |  | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 |
|  |  resource |  | 1..1 | Resource | 外部参照Binaryリソース | /CD/component/structuredBody/component/section/<BR>entry/observationMedia | 外部参照のバイナリデータの情報。 |

### 表2 Compositionリソースの仕様

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 要素Lv4 | 多重度 | 型 | 値 | 生理検査レポートCDAとのマッピング<BR>(CD=ClinicalDocument) | 説明 |
|---|---|---|---|---|---|---|---|---|
| resourceType |  |  |  |  |  | "Composition" |  | Compositionリソースであることを示す |
| meta |  |  |  | 1..1 | Meta |  |  |  |
|  | lastUpdated |  |  | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile |  |  | 1..1 | canonical(StructureDefinition) | "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/<BR>JP_Composition_EKGReport" | /CD/templateId | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
| extension |  |  |  | 0..1 | Extension |  |  | 文書バージョンを表す拡張「composition-clinicaldocument-versionNumber」。 |
|  | url |  |  | 1..1 | uri | "http://hl7.org/fhir/StructureDefinition/compositi<BR>on-clinicaldocument-versionNumber" |  | 拡張を識別するURL。固定値。 |
|  | valueString |  |  | 1..1 | string | “1” | /CD/versionNumber | 文書のバージョン番号を表す文字列。値は例示。 |
| language |  |  |  | 0..1 | code | "ja" | /CD/languageCode | この文書の記述言語。 |
|  identifier |  |  |  | 0..1 | Identifier |  | /CD/id | この文書の文書ID。 |
|  | system |  |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/documentInsta<BR>nce-identifier" | /CD/id/@root | 文書IDの名前空間を表すURI。固定値。 |
|  | value |  |  | 1..1 | string | "1234567890_20231205_LJCS-100D_20231205101112.94.1<BR>4239.1002_20231205112233_200_1" | /CD/id/@extension | 文書ID。値は例示。 |
|  status |  |  |  | 1..1 | code | "final" |  | この文書のステータス。最終版が登録される段階では、”final” でなければならない。 |
|  type |  |  |  | 1..1 | CodeableConcept |  | /CD/code | 文書区分コード |
|  | coding |  |  | 1..1 | Coding |  |  |  |
|  |  | system |  | 1..1 | uri | "http://loinc.org" | /CD/code/@codeSystem | 文書区分コードのコード体系を識別するUR（LOINCコードベース）。固定値 |
|  |  | code |  | 1..1 | code | "28010-7" | /CD/code/@code | 文書区分コード。固定値 |
|  |  | display |  | 0..1 | string | "EKG Report" | /CD/code/@displayName | 文書区分コードの表示名。 |
|  category |  |  |  | 1..* | CodeableConcept |  | /CD/code | 文書クラス（カテゴリー） |
|  | coding |  |  | 1..1 |  |  |  |  |
|  |  | system |  | 1..1 | uri | "http://loinc.org" | /CD/code/@codeSystem | 文書クラスのコード体系を識別するURI。固定値。 |
|  |  | code |  | 1..1 | code | "28010-7" | /CD/code/@code | 文書カテゴリコード。固定値 |
|  |  | display |  | 0..1 | string | "EKG Report" | /CD/code/@displayName | コードの表示名 |
|  subject |  |  |  | 1..1 | Reference(Patient) |  | /CD/recordTraget | 患者情報を表すPatientリソースへの参照。 |
|  | reference |  |  | 1..1 | string | "urn:uuid:77fbc1a7-8e7e-494c-9763-6545a73afcc4" |  | PatientリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 | |
|  date |  |  |  | 1..1 | dateTime | "2019-03-26T00:43:30+09:00" | /CD/effectiveTime<BR>author/time | このリソースを作成または最後に編集した日時。ISO8601に準拠し、秒の精度まで記録し、タイムゾーンも付記する。午前0時を”24:00”と記録することはできないため”00:00”と記録すること。値は例示。 |
|  author |  |  |  | 1..2 | Reference(Practitioner \|  Device \| Organization) |  | /CD/author | 文書作成責任者を表すPractitionerリソースないし作成システムを表すDeviceリソースへの参照、および文書作成機関を表すOrganizationリソースへの参照の2つのReferenceを繰り返す。 |
|  | reference |  |  | 0..1 | string | "urn:uuid:4b0210b8-9866-4509-9bd9-044120ff2349" |  | 作成者PractitionerリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
|  | reference |  |  | 0..1 | string | "urn:uuid:a78efb38-13d1-448a-ad68-5e28dfbdc306" |  | 作成システムDevicerリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
|  | reference |  |  | 0..1 | string | "urn:uuid:6cd03543-6a5b-4396-ab12-cd3b78171e0c" |  | 医療機関OrganizationリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
|  title |  |  |  | 1..1 | string |  | /CD/title | この文書の（人が読める）タイトル。固定値。 |
|  confidentiality |  |  |  | 0..1 | code |  | /CD/confidentialityCode | 機密性を表すコード |
|  attester |  |  |  | 0..* | BackboneElement |  | /CD/authenticator |  |
|  |  mode |  |  | 1..1 | code | "official" |  | 文書内容の承認のタイプ。固定値。 |
|  |  time |  |  | 0..1 | dateTime |  | /CD/authenticator/time | 文書内容を承認した日時。 |
|  |  party |  |  | 0..1 | Reference(Practitioner) |  | /CD/authenticator/assignedEntity | 文書内容責任者Practitionerリソースへの参照。 |
|  |  | reference |  | 0..1 | string | "urn:uuid:e6597c74-c7e0-46ba-85fd-826eab41b01f" |  | 文書内容責任者PractitionerリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
|  custodian |  |  |  | 0..1 | Reference(Organization) |  | /CD/custodian | 文書の作成・修正を行い、文書の管理責任を持つ機関（Organizationリソース）への参照。 |
|  | reference |  |  | 0..1 | string |  "urn:uuid:6cd03543-6a5b-4396-ab12-cd3b78171e0c" |  | custodianに対応するOrganizationリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
|  event |  |  |  | 0..* | BackboneElement |  | /CD/documentationOf | 心電図レポートの元になった心電図検査の実施情報 |
|  |  code |  |  | 0..* | CodeableConcept |  | /CD/documentationOf/serviceEvent/code |  |
|  |  period |  |  | 0..1 | Period |  | /CD/documentationOf/serviceEvent/effectiveTime | 心電図検査の実施期間 |
|  |  | start |  | 0..1 |  | "2023-12-05T13:49:04+09:00" | /CD/documentationOf/serviceEvent/effectiveTime/@low | 心電図検査の開始日時 |
|  |  | end |  | 0..1 |  | "2023-12-05T13:49:04+09:00" | /CD/documentationOf/serviceEvent/effectiveTime/<BR>@high | 心電図検査の終了日時 |
|  |  detail |  |  | 1..1 | Reference(Procedure) |  | /CD/documentationOf/serviceEvent/performer | 検査実施情報を表すProcedureリソースへの参照。 |
|  |  | reference |  | 0..1 | string |  "urn:uuid:fa0c6541-aec6-483f-9b6d-175b5e838bf4" |  | event.detailに対応するProcedureリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
|  section |  |  |  | 0..1 | Observation | 患者付帯情報セクション |  | 対象患者の検査時の年齢をObservationリソースを使用して記述する。 | | | | | | | | | |
|  section |  |  |  | 0..1 | Observation | バイタルサインセクション |  | 身長、体重、収縮期血圧、拡張期血圧の値をObservationリソースを使用して記述する。 | | | | | | | | | |
|  section |  |  |  | 0..* | － | 検査項目セクション |  | 生理機能検査において実施される検査項目を記述する。JLAC、JJ1017、LOINCのいずれかを使用する。 | | | | | | | | |
|  section |  |  |  | 0..1 | － | 既往歴セクション |  | 過去の病歴、プロブレム、診断の経歴、現疾患あるいは治療を探るために直接可能性のあることの詳細を記述する。 | | | | | | | | |
|  section |  |  |  | 0..1 | － | 自覚症状セクション |  | 患者本人が知覚する症状（痛み・吐き気・倦怠感など）の記述に使用する。 | | | | | | | | |
|  section |  |  |  | 0..1 | － | 検査時使用薬セクション |  | 検査時に患者に投薬された薬剤情報を記述するのに使用する。 | | | | | | | | |
|  section |  |  |  | 0..1 | － | 検査記述セクション |  | 検査結果に対し、「負荷後 00’43”」や所見ではないコメントなどの補足情報を付加するために使用する。 | | | | | | | | |
|  section |  |  |  | 0..1 | － | 心電図コメントセクション |  | 心電図検査時のコメント情報を記述するのに使用する。検査所見と異なり、検査に補足したいコメントを記述する。 | | | | | | | | |
|  section |  |  |  | 0..1 | Observation | 計測値セクション |  | 検査時に計測した情報や解析結果などをObservationリソースを使用して記述する。 | | | | | | | | | |
|  section |  |  |  | 0..1 | Observation | 解析結果セクション |  | 計測値や解析により得られた数値類ではなく自動解析コードなどのデータ分析結果の分類コードをObservationリソースを使用して記述する。 | | | | | | | | | |
|  section |  |  |  | 0..1 | － | 検査所見セクション |  | 心電図検査における検査所見を記述するのに使用する。 | | | | | | | | | |
|  section |  |  |  | 0..1 | － | 医師所見セクション |  | 医師所見を記述するのに使用する。各検査データの判読結果として記述を想定している。 | | | | | | | | |
|  section |  |  |  | 0..1 | DocumentReference \| Binary | 外部参照セクション |  | 心電図レポートに付加される検査データ（波形、画像、結果PDFなど）、レポート（HTML形式など）、添付ファイル（シェーマや描画ファイル）への外部参照情報を記述する。画像データについてはBinaryリソースを使用して記述し、それ以外の文書データについてはDocumentResourceリソースを使用して記述する。 | | | | | | | | | |

### 表3 Patientリソースの仕様

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 生理検査レポートCDAとのマッピング<BR>(CD=ClinicalDocument) | 説明 |
|---|---|---|---|---|---|---|---|
| resourceType |  |  |  |  | "Patient" | /CD/recordTarget | Patientリソースであることを示す。 |
| meta |  |  | 1..1 | Meta |  |  |  |
|  | lastUpdated |  | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile |  | 1..1 | canonical(StructureDefinition) | "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/<BR>JP_Patient_SEAMAT" |  | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
|  identifier |  |  | 0..1 | Identifier |  | /CD/recordTarget/patientRole/id | 医療機関における患者番号。 |
|  | system |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/resourceInsta<BR>nce-identifier" | /CD/recordTarget/patientRole/id/@root | 医療機関における患者IDに対する名前空間識別子。固定値。 |
|  | value |  | 1..1 | string | "1234567890" | /CD/recordTarget/patientRole/id/@extension | 患者番号の文字列。値は例示。 |
|  identifier |  |  | 1..1 | Identifier |  |  | この文書の文書ID。 |
|  | system |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/documentInsta<BR>nce-identifier" |  | 文書IDに対する名前空間識別子。固定値。 |
|  | value |  | 1..1 | string | "1234567890_20231205_LJCS-100D_20231205101112.94.1<BR>4239.1002_20231205112233_100_1" |  | 文書IDの文字列。値は例示。 |
|  active |  |  | 1..1 | boolean | true |  | 患者レコードがアクティブかどうか。固定値。 |
|  name |  |  | 0..1 | HumanName |  | /CD/recordTarget/patientRole/patient/name | 患者氏名　漢字表記 |
|  | extension |  | 1..* |  |  |  | 氏名が漢字表記かカナ表記かを区別するための拡張「iso21090-EN-representation」。 |
|  |  | url | 1..1 | uri | "http:// hl7.org/fhir/StructureDefinition/iso21090<BR>-EN-representation" |  | 拡張を識別するURL。固定値。 |
|  |  | valueCode | 1..1 | code | "IDE" |  | 漢字表記であることを示す固定値。 |
|  | use |  | 1..1 | code | "official" |  | 氏名が正式名称であることを明示するために、NameUseバリューセット（http:// hl7.org/fhir/ValueSet/name-use）より「official」を必須で設定する。 |
|  | text |  | 1..1 | string | "東京 太郎" |  | 氏名全体の文字列をtext要素に入れる。氏名の姓と名が分離できない場合は本要素のみを使用する。姓と名の間には原則として半角空白を1個挿入する。 |
|  | family |  | 0..1 | string | "東京" |  | 氏名の姓。 |
|  | given |  | 0..* | string | "太郎" |  | 氏名の名。ミドルネームがある場合には、ミドルネーム、名の順で原則として半角空白をいれて連結する文字列とする。 |
|  name |  |  | 0..1 | HumanName |  | /CD/recordTarget/patientRole/patient/name | よみ（カタカナ） |
|  | extension |  | 1..* |  |  |  | 氏名が漢字表記かカナ表記かを区別するための拡張「iso21090-EN-representation」。 |
|  |  | url | 1..1 | uri | "http://hl7.org/fhir/StructureDefinition/iso21090-<BR>EN-representation" |  | 拡張を識別するURL。固定値。 |
|  |  | valueCode | 1..1 | code | "SYL" |  | カナ表記であることを示す固定値。 |
|  | use |  | 1..1 | code | "official" |  | 氏名が正式名称であることを明示するために、NameUseバリューセット（http:// hl7.org/fhir/ValueSet/name-use）より「official」を必須で設定する。 |
|  | text |  | 1..1 | string | "トウキョウ タロウ" |  | カナ氏名全体の文字列をtext要素に入れる。氏名の姓と名が分離できない場合は本要素のみを使用する。カタカナはJIS X 0208のカタカナ（全角カナ）みとし、JIS X 0201のカタカナ（半角カナ）は使用してはならない。姓と名の間には原則として半角空白を1個挿入する。 |
|  | family |  | 0..1 | string | "トウキョウ" |  | カナ氏名の姓。 |
|  | given |  | 0..* | string | "タロウ" |  | カナ氏名の名。ミミドルネームがある場合には、ミドルネーム、名の順で原則として半角空白をいれて連結する文字列とする。 |
|  telecom |  |  | 0..1 | ContactPoint |  | /CD/recordTarget/patientRole/telecom | 患者連絡先電話番号。 |
|  | system |  | 1..1 | code | "phone" | /CD/recordTarget/patientRole/telecom/@value<BR>"tel:xxxxx" → "phone"<BR>"fax:xxxxxx" → "fax" | 連絡手段 phone \| fax \| email \| pager \| url \| sms \| other |
|  | value |  | 1..1 | string | "03-1234-5678" | /CD/recordTarget/patientRole/telecom/@value | 電話番号 |
|  | use |  | 1..1 | code | "home" | /CD/recordTarget/patientRole/telecom/@use | 用途　home \| work \| temp \| old \| mobile |
|  gender |  |  | 0..1 | code | "male" | /CD/recordTarget/patientRole/patient/<BR>administrativeGenderCode | 患者の性別。”male”または”female”。値は例示。 |
|  birthDate |  |  | 0..1 | date | "1965-04-15" | /CD/recordTarget/patientRole/patient/birthTime | 患者の生年月日。ISO8601に準拠して”yyyy-mm-dd”形式。値は例示。 | | | |
|  address |  |  | 0..1 | Address |  | /CD/recordTarget/patientRole/addr | 患者の住所。 |
|  | use |  | 1..1 | code | "home" | /CD/recordTarget/patientRole/addr/@use | 用途　home \| work \| temp \| old \| \billing |
|  | text |  | 0..1 | string | "東京都江戸川区南葛西３－１－２" | /CD/recordTarget/patientRole/addr/text() | 住所文字列。値は例示。郵便番号は含めない。 |
|  | line |  | 0..1 | string | "南葛西１－２－３" | /CD/recordTarget/patientRole/addr/streetAddressLine | 番地・通り名他。丁目、番地、通り名、マンション名、部屋番号、そのほか住所を構成するcityまでの部分以外のすべての文字列。値は例示。 |
|  | city |  | 0..1 | string | "江戸川区" | /CD/recordTarget/patientRole/addr/city | 市町村郡名、区名、大字名など。丁目や番地などを除く。値は例示。 |
|  | state |  | 0..1 | string | "東京都" | /CD/recordTarget/patientRole/addr/state | 都道府県名で、都道府県の文字を含む。例：東京都　など（「東京」ではなく）。値は例示。 |
|  | postalCode |  | 0..1 | string | "134-0085" | /CD/recordTarget/patientRole/addr/postalCode | 郵便番号。値は例示。 |
|  | country |  | 0..1 | string | "JP" | /CD/recordTarget/patientRole/addr/country | 居住地が国内の場合「JP」固定。 | | | | | | | | | | | | | | | | | | |
|  managingOrganization |  |  | 0..1 | Reference(Organization) |  | /CD/recordTarget/patientRole/providerOrganization | 所属科Organizationリソースへの参照。 |
|  | reference |  | 1..1 | string | "urn:uuid:d4d71934-e535-4029-a4c8-a4d098359e4d" |  | OrganizationリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 | | | |

### 表4 所属科Organizationリソースの仕様

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 生理検査レポートCDAとのマッピング<BR>(CD=ClinicalDocument) | 説明 |
|---|---|---|---|---|---|---|---|
| resourceType |  |  |  |  | "Organization" | /CD/recordTarget/patientRole/providerOrganization | Organizationリソースであることを示す。 |
| meta |  |  | 1..1 | Meta |  |  |  |
|  | lastUpdated |  | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile |  | 1..1 | canonical(StructureDefinition) | "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/<BR>JP_Organization_SEAMAT_Department" |  | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
|  identifier |  |  | 1..1 | Identifier |  |  | この文書の文書ID。 |
|  | system |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/documentInsta<BR>nce-identifier" |  | 文書IDに対する名前空間識別子。固定値。 |
|  | value |  | 1..1 | string | "1234567890_20231205_LJCS-100D_20231205101112.94.1<BR>4239.1002_20231205112233_100_1" |  | 文書IDの文字列。値は例示。 |
|  active |  |  | 0..1 | boolean | true |  |  |
|  type |  |  | 0..* | CodeableConcept |  |  | 施設種別 |
|  | coding |  | 1..1 | Coding |  |  |  |
|  |  | system | 1..1 | uri | "http://terminology.hl7.org/CodeSystem/organizatio<BR>n-type" |  | 施設種別を表すコード体系を識別するURI。固定値。 |
|  |  | code | 1..1 | code | "dept" |  | バリューセットOrganizationType(http://hl7.org/fhir/ValueSet/organization-type) から、診療科を表すコードを指定。固定値。 |
|  |  | display | 1..1 | string | "Hospital Department" |  | 診療科を表す名称を指定。固定値。 |
|  name |  |  | 0..1 | string | "内科" | /CD/recordTarget/patientRole/providerOrganization/<BR>name | 診療科名称。値は例示。 | | | | | | | | | | |

### 表5 作成責任者Practitionerリソースの仕様

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 生理検査レポートCDAとのマッピング<BR>(CD=ClinicalDocument) | 説明 |
|---|---|---|---|---|---|---|---|
| resourceType |  |  |  |  | "Practitioner" | /CD/author | Practitionerリソースであることを示す。 |
| meta |  |  | 1..1 | Meta |  |  |  |
|  | lastUpdated |  | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile |  | 1..1 | canonical(StructureDefinition) | "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/<BR>JP_Practitioner_SEAMAT_Author" |  | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
|  identifier |  |  | 0..1 | Identifier |  | /CD/author/assignedAuthor/id | 医療機関における職員のID。 |
|  | system |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/resourceInsta<BR>nce-identifier" |  | 職員IDに対する名前空間識別子。固定値。 |
|  | value |  | 1..1 | string | "1234678" |  | 職員IDの文字列。値は例示。 |
|  identifier |  |  | 1..1 | Identifier |  |  | この文書の文書ID。 |
|  | system |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/documentInsta<BR>nce-identifier" |  | 文書IDに対する名前空間識別子。固定値。 |
|  | value |  | 1..1 | string | "1234567890_20231205_LJCS-100D_20231205101112.94.1<BR>4239.1002_20231205112233_100_1" |  | 文書IDの文字列。値は例示。 |
|  active |  |  | 0..1 | boolean | true |  |  |
|  name |  |  | 0..1 | HumanName |  | /CD/author/assignedAuthor/assignedPerson/name | 職員名　漢字表記 |
|  | extension |  | 1..* |  |  |  | 氏名が漢字表記かカナ表記かを区別するための拡張「iso21090-EN-representation」。 |
|  |  | url | 1..1 | uri | "http:// hl7.org/fhir/StructureDefinition/iso21090<BR>-EN-representation" |  | 拡張を識別するURL。固定値。 |
|  |  | valueCode | 1..1 | code | "IDE" |  | 漢字表記であることを示す固定値。 |
|  | use |  | 1..1 | code | "official" |  | 氏名が正式名称であることを明示するために、NameUseバリューセット（http:// hl7.org/fhir/ValueSet/name-use）より「official」を必須で設定する。 |
|  | text |  | 1..1 | string | "職員 太郎" |  | 氏名全体の文字列をtext要素に入れる。氏名の姓と名が分離できない場合は本要素のみを使用する。姓と名の間には原則として半角空白を1個挿入する。 |
|  | family |  | 0..1 | string | "職員" |  | 氏名の姓。 |
|  | given |  | 0..* | string | "太郎" |  | 氏名の名。ミドルネームがある場合には、ミドルネーム、名の順で原則として半角空白をいれて連結する文字列とする。 |
|  name |  |  | 0..1 | HumanName |  | /CD/author/assignedAuthor/assignedPerson/name | 職員名よみ（カタカナ） |
|  | extension |  | 1..* |  |  |  | 氏名が漢字表記かカナ表記かを区別するための拡張「iso21090-EN-representation」。 |
|  |  | url | 1..1 | uri | "http:// hl7.org/fhir/StructureDefinition/iso21090<BR>-EN-representation" |  | 拡張を識別するURL。固定値。 |
|  |  | valueCode | 1..1 | code | "SYL" |  | カナ表記であることを示す固定値。 |
|  | use |  | 1..1 | code | "official" |  | 氏名が正式名称であることを明示するために、NameUseバリューセット（http:// hl7.org/fhir/ValueSet/name-use）より「official」を必須で設定する。 |
|  | text |  | 1..1 | string | "ショクイン タロウ" |  | カナ氏名全体の文字列をtext要素に入れる。氏名の姓と名が分離できない場合は本要素のみを使用する。カタカナはJIS X 0208のカタカナ（全角カナ）みとし、JIS X 0201のカタカナ（半角カナ）は使用してはならない。姓と名の間には原則として半角空白を1個挿入する。 |
|  | family |  | 0..1 | string | "ショクイン" |  | カナ氏名の姓。 |
|  | given |  | 0..* | string | "タロウ" |  | カナ氏名の名。ミミドルネームがある場合には、ミドルネーム、名の順で原則として半角空白をいれて連結する文字列とする。 |
|  telecom |  |  | 0..* | ContactPoint |  | /CD/author/assignedAuthor/telecom | 職員の連絡先。 |
|  | system |  | 1..1 | code | "phone" | /CD/rauthor/assignedAuthor/telecom/@value<BR>"tel:xxxxx" → "phone"<BR>"fax:xxxxxx" → "fax" | 連絡手段 phone \| fax \| email \| pager \| url \| sms \| other。値は例示。 |
|  | value |  | 1..1 | string | "03-1234-5678" | /CD/rauthor/assignedAuthor/telecom/@value | 電話番号。値は例示。 |
|  | use |  | 1..1 | code | "home" | /CD/author/assignedAuthor/telecom/@use | 用途　home \| work \| temp \| old \| mobile。値は例示。 |
|  address |  |  | 0..* | Address |  | /CD/author/assignedAuthor/addr | 職員の住所。 |
|  | use |  | 1..1 | code | "home" | /CD/recordTarget/patientRole/addr/@use | 用途　home \| work \| temp \| old \| billing |
|  | text |  | 0..1 | string | "東京都江戸川区南葛西３－１－２" | /CD/recordTarget/patientRole/addr/text() | 住所文字列。値は例示。郵便番号は含めない。 |
|  | line |  | 0..1 | string | "南葛西１－２－３" | /CD/recordTarget/patientRole/addr/streetAddressLine | 番地・通り名他。丁目、番地、通り名、マンション名、部屋番号、そのほか住所を構成するcityまでの部分以外のすべての文字列。値は例示。 |
|  | city |  | 0..1 | string | "江戸川区" | /CD/recordTarget/patientRole/addr/city | 市町村郡名、区名、大字名など。丁目や番地などを除く。値は例示。 |
|  | state |  | 0..1 | string | "東京都" | /CD/recordTarget/patientRole/addr/state | 都道府県名で、都道府県の文字を含む。例：東京都　など（「東京」ではなく）。値は例示。 |
|  | postalCode |  | 0..1 | string | "134-0085" | /CD/recordTarget/patientRole/addr/postalCode | 郵便番号。値は例示。 |
|  | country |  | 0..1 | string | "JP" | /CD/recordTarget/patientRole/addr/country | 居住地が国内の場合「JP」固定。 | | | | | | | | | |

### 表6 作成システムDeviceリソースの仕様

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 生理検査レポートCDAとのマッピング<BR>(CD=ClinicalDocument) | 説明 |
|---|---|---|---|---|---|---|---|
| resourceType |  |  |  |  | "Device" | /CD/author | Deviceリソースであることを示す。 |
| meta |  |  | 1..1 | Meta |  |  |  |
|  | lastUpdated |  | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile |  | 1..1 | canonical(StructureDefinition) | http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/J<BR>P_Device_SEAMAT_Author |  | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
|  identifier |  |  | 0..1 | Identifier |  | /CD/author/assignedAuthor/id | 作成システムのID |
|  | system |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/resourceInsta<BR>nce-identifier" |  | 作成すステムIDに対する名前空間識別子。固定値。 |
|  | value |  | 1..1 | string | "1234678" |  | 作成システムIDの文字列。値は例示。 |
|  identifier |  |  | 1..1 | Identifier |  |  | この文書の文書ID。 |
|  | system |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/documentInsta<BR>nce-identifier" |  | 文書IDに対する名前空間識別子。固定値。 |
|  | value |  | 1..1 | string | "1234567890_20231205_LJCS-100D_20231205101112.94.1<BR>4239.1002_20231205112233_100_1" |  | 文書IDの文字列。値は例示。 | | | | | | | | |
|  status |  |  | 0..1 | code | active |  | 作成システムのレコードがアクティブかどうか。固定値。 | | |
|  manufacturer |  |  | 0..1 | string | "FUKUDA DENSHI Corp." | /CD/author/assignedAuthor/representedOrganization/<BR>name | 作成システムの製造メーカーの名称。値は例示。 | | | | |
|  deviceName |  |  | 0..1 | BackboneElement |  |  |  |
|  |  name |  | 1..1 | string | "FCP-7541" | /CD/author/assignedAuthor/assignedAuthoringDevice/<BR>manufacturerModelName | 作成システムのモデル名。値は例示。 |
|  |  type |  | 1..1 | code | "model-name" |  | デバイス名の種類。バリューセット（"http://hl7.org/fhir/ValueSet/device-nametype"）からモデル名を表す"model-name"を固定で設定する。 |
|  deviceName |  |  | 0..1 | BackboneElement |  |  |  |
|  |  name |  | 1..1 | string | "ResultSender" | /CD/author/assignedAuthor/assignedAuthoringDevice/<BR>softwareName | 作成システムのソフトウェア名。値は例示。 |
|  |  type |  | 1..1 | code | "other" |  | デバイス名の種類。バリューセット（"http://hl7.org/fhir/ValueSet/device-nametype"）からその他を表す"other"を固定で設定する。 | | | | | | | | | | | | | | | | | | | | | | |

### 表7 作成医療機関Organizationリソースの仕様

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 生理検査レポートCDAとのマッピング<BR>(CD=ClinicalDocument) | 説明 |
|---|---|---|---|---|---|---|---|
| resourceType |  |  |  | DomainResource | "Organization" | /CD/author/assignedAuthor/representedOrganization | Organizationリソースであることを示す。 |
| meta |  |  | 1..1 | Meta |  |  |  |
|  | lastUpdated |  | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile |  | 1..1 | canonical(StructureDefinition) | http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/J<BR>P_Organization_SEAMAT_Author |  | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
|  identifier |  |  | 0..1 | Identifier |  | /CD/author/assignedAuthor/representedOrganization/<BR>id | この医療機関のID。 |
|  | system |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/resourceInsta<BR>nce-identifier" |  | 医療機関IDに対する名前空間識別子。固定値。 |
|  | value |  | 1..1 | string | "1311234567" | /CD/author/assignedAuthor/representedOrganization/<BR>id/@extension | 医療機関IDの文字列。値は例示。 |
|  identifier |  |  | 1..1 | Identifier |  |  | この文書の文書ID。 |
|  | system |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/documentInsta<BR>nce-identifier" |  | 文書IDに対する名前空間識別子。固定値。 |
|  | value |  | 1..1 | string | "1234567890_20231205_LJCS-100D_20231205101112.94.1<BR>4239.1002_20231205112233_100_1" |  | 文書IDの文字列。値は例示。 |
|  active |  |  | 0..1 | boolean | true |  |  |
|  type |  |  | 0..* | CodeableConcept |  |  | 施設種別 |
|  | coding |  | 1..1 | Coding |  |  |  |
|  |  | system | 1..1 | uri | "http://terminology.hl7.org/CodeSystem/organizatio<BR>n-type" |  | 施設種別を表すコード体系を識別するURI。固定値。 |
|  |  | code | 1..1 | code | "prov" |  | バリューセットOrganizationType(http://hl7.org/fhir/ValueSet/organization-type) から、医療機関を表すコードを指定。固定値。 |
|  |  | display | 1..1 | string | "Healthcare Provider" |  | 医療機関を表す名称を指定。固定値。 |
|  name |  |  | 0..1 | string | "ABC総合病院" | /CD/author/assignedAuthor/representedOrganization/<BR>name | 医療機関の名称。値は例示。 |
|  telecom |  |  | 0..* | ContactPoint |  | /CD/author/assignedAuthor/representedOrganization/<BR>telecom | 医療機関の連絡先。 |
|  | system |  | 1..1 | code | "phone" | /CD/author/assignedAuthor/representedOrganization/<BR>telecom/@value<BR>"tel:xxxxx" → "phone"<BR>"fax:xxxxxx" → "fax" | 連絡手段 phone \| fax \| email \| pager \| url \| sms \| other。値は例示。 |
|  | value |  | 1..1 | string | "03-1234-5678" | /CD/author/assignedAuthor/representedOrganization/<BR>telecom/@value | 電話番号。値は例示。 |
|  | use |  | 1..1 | code | "home" | /CD/author/assignedAuthor/representedOrganization/<BR>telecom/@use | 用途　home \| work \| temp \| old \| mobile。値は例示。 |
|  address |  |  | 0..* | Address |  | /CD/author/assignedAuthor/representedOrganization/<BR>addr | 医療機関の住所。 |
|  | use |  | 1..1 | code | "home" | /CD/author/assignedAuthor/representedOrganization/<BR>addr/@use | 用途　home \| work \| temp \| old \| billing |
|  | text |  | 0..1 | string | "東京都江戸川区南葛西３－１－２" | /CD/author/assignedAuthor/representedOrganization/<BR>addr/text() | 住所文字列。値は例示。郵便番号は含めない。 |
|  | line |  | 0..1 | string | "南葛西１－２－３" | /CD/author/assignedAuthor/representedOrganization/<BR>addr/streetAddressLine | 番地・通り名他。丁目、番地、通り名、マンション名、部屋番号、そのほか住所を構成するcityまでの部分以外のすべての文字列。値は例示。 |
|  | city |  | 0..1 | string | "江戸川区" | /CD/author/assignedAuthor/representedOrganization/<BR>addr/city | 市町村郡名、区名、大字名など。丁目や番地などを除く。値は例示。 |
|  | state |  | 0..1 | string | "東京都" | /CD/author/assignedAuthor/representedOrganization/<BR>addr/state | 都道府県名で、都道府県の文字を含む。例：東京都　など（「東京」ではなく）。値は例示。 |
|  | postalCode |  | 0..1 | string | "134-0085" | /CD/author/assignedAuthor/representedOrganization/<BR>addr/postalCode | 郵便番号。値は例示。 |
|  | country |  | 0..1 | string | "JP" | /CD/author/assignedAuthor/representedOrganization/<BR>addr/country | 居住地が国内の場合「JP」固定。 |
|  partOf |  |  | 0..1 | Reference(Organization) |  | /CD/author/assignedAuthor/representedOrganization/<BR>asOrganizationPartOf/id |  |
|  | identifier |  | 1..1 | Identifier |  |  |  |
|  |  | value | 1..1 | string | "0311234567" | /CD/author/assignedAuthor/representedOrganization/<BR>asOrganizationPartOf/id/@extension | 親組織の医療機関ID |

### 表8 管理医療機関Organizationリソースの仕様

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 生理検査レポートCDAとのマッピング<BR>(CD=ClinicalDocument) | 説明 |
|---|---|---|---|---|---|---|---|
| resourceType |  |  |  | DomainResource | "Organization" | /CD//ClinicalDocument/custodian | Organizationリソースであることを示す。 |
| meta |  |  | 1..1 | Meta |  |  |  |
|  | lastUpdated |  | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile |  | 1..1 | canonical(StructureDefinition) | http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/J<BR>P_Organization_SEAMAT_Custodian |  | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
|  identifier |  |  | 0..1 | Identifier |  | /CD/custodian/assignedCustodian/<BR>representedCustodianOrganization/id | この医療機関のID。 |
|  | system |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/resourceInsta<BR>nce-identifier" |  | 医療機関IDに対する名前空間識別子。固定値。 |
|  | value |  | 1..1 | string | "1311234567" | /CD/custodian/assignedCustodian/<BR>representedCustodianOrganization/id/@extension | 医療機関IDの文字列。値は例示。 |
|  identifier |  |  | 1..1 | Identifier |  |  | この文書の文書ID。 |
|  | system |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/documentInsta<BR>nce-identifier" |  | 文書IDに対する名前空間識別子。固定値。 |
|  | value |  | 1..1 | string | "1234567890_20231205_LJCS-100D_20231205101112.94.1<BR>4239.1002_20231205112233_100_1" |  | 文書IDの文字列。値は例示。 |
|  active |  |  | 0..1 | boolean | true |  |  |
|  type |  |  | 0..* | CodeableConcept |  |  | 施設種別 |
|  | coding |  | 1..1 | Coding |  |  |  |
|  |  | system | 1..1 | uri | "http://terminology.hl7.org/CodeSystem/organizatio<BR>n-type" |  | 施設種別を表すコード体系を識別するURI。固定値。 |
|  |  | code | 1..1 | code | "prov" |  | バリューセットOrganizationType(http://hl7.org/fhir/ValueSet/organization-type) から、医療機関を表すコードを指定。固定値。 |
|  |  | display | 1..1 | string | "Healthcare Provider" |  | 医療機関を表す名称を指定。固定値。 |
|  name |  |  | 0..1 | string | "ABC総合病院" | /CD/custodian/assignedCustodian/<BR>representedCustodianOrganization/name | 医療機関の名称。値は例示。 |
|  telecom |  |  | 0..* | ContactPoint |  | /CD/custodian/assignedCustodian/<BR>representedCustodianOrganization/telecom | 医療機関の連絡先。 |
|  | system |  | 1..1 | code | "phone" | /CD/custodian/assignedCustodian/<BR>representedCustodianOrganization/telecom/@value<BR>"tel:xxxxx" → "phone"<BR>"fax:xxxxxx" → "fax" | 連絡手段 phone \| fax \| email \| pager \| url \| sms \| other。値は例示。 |
|  | value |  | 1..1 | string | "03-1234-5678" | /CD/custodian/assignedCustodian/<BR>representedCustodianOrganization/telecom/@value | 電話番号。値は例示。 |
|  | use |  | 1..1 | code | "home" | /CD/custodian/assignedCustodian/<BR>representedCustodianOrganization/telecom/@use | 用途　home \| work \| temp \| old \| mobile。値は例示。 |
|  address |  |  | 0..* | Address |  | /CD/custodian/assignedCustodian/<BR>representedCustodianOrganization/addr | 医療機関の住所。 |
|  | use |  | 1..1 | code | "home" | /CD/custodian/assignedCustodian/<BR>representedCustodianOrganization/addr/@use | 用途　home \| work \| temp \| old \| billing |
|  | text |  | 0..1 | string | "東京都江戸川区南葛西３－１－２" | /CD/custodian/assignedCustodian/<BR>representedCustodianOrganization/addr/text() | 住所文字列。値は例示。郵便番号は含めない。 |
|  | line |  | 0..1 | string | "南葛西１－２－３" | /CD/custodian/assignedCustodian/<BR>representedCustodianOrganization/addr/<BR>streetAddressLine | 番地・通り名他。丁目、番地、通り名、マンション名、部屋番号、そのほか住所を構成するcityまでの部分以外のすべての文字列。値は例示。 |
|  | city |  | 0..1 | string | "江戸川区" | /CD/custodian/assignedCustodian/<BR>representedCustodianOrganization/addr/city | 市町村郡名、区名、大字名など。丁目や番地などを除く。値は例示。 |
|  | state |  | 0..1 | string | "東京都" | /CD/custodian/assignedCustodian/<BR>representedCustodianOrganization/addr/state | 都道府県名で、都道府県の文字を含む。例：東京都　など（「東京」ではなく）。値は例示。 |
|  | postalCode |  | 0..1 | string | "134-0085" | /CD/custodian/assignedCustodian/<BR>representedCustodianOrganization/addr/postalCode | 郵便番号。値は例示。 |
|  | country |  | 0..1 | string | "JP" | /CD/custodian/assignedCustodian/<BR>representedCustodianOrganization/addr/country | 居住地が国内の場合「JP」固定。 |

### 表9 文書内容責任者Practitionerリソースの仕様

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 生理検査レポートCDAとのマッピング<BR>(CD=ClinicalDocument) | 説明 |
|---|---|---|---|---|---|---|---|
| resourceType |  |  |  |  | "Practitioner" | /CD/authenticator/assignedEntity | Practitionerリソースであることを示す。 |
| meta |  |  | 1..1 | Meta |  |  |  |
|  | lastUpdated |  | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile |  | 1..1 | canonical(StructureDefinition) | http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/J<BR>P_Practitioner_SEAMAT_Authenticator |  | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
|  identifier |  |  | 0..1 | Identifier |  | /CD/authenticator/assignedEntity/id | 医療機関における職員のID。 |
|  | system |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/resourceInsta<BR>nce-identifier" |  | 職員IDに対する名前空間識別子。固定値。 |
|  | value |  | 1..1 | string | "1234678" |  | 職員IDの文字列。値は例示。 |
|  identifier |  |  | 1..1 | Identifier |  |  | この文書の文書ID。 |
|  | system |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/documentInsta<BR>nce-identifier" |  | 文書IDに対する名前空間識別子。固定値。 |
|  | value |  | 1..1 | string | "1234567890_20231205_LJCS-100D_20231205101112.94.1<BR>4239.1002_20231205112233_100_1" |  | 文書IDの文字列。値は例示。 |
|  active |  |  | 0..1 | boolean | true |  |  |
|  name |  |  | 0..1 | HumanName |  | /CD/authenticator/assignedEntity/assignedPerson/<BR>name | 職員名　漢字表記 |
|  | extension |  | 1..* |  |  |  | 氏名が漢字表記かカナ表記かを区別するための拡張「iso21090-EN-representation」。 |
|  |  | url | 1..1 | uri | "http:// hl7.org/fhir/StructureDefinition/iso21090<BR>-EN-representation" |  | 拡張を識別するURL。固定値。 |
|  |  | valueCode | 1..1 | code | "IDE" |  | 漢字表記であることを示す固定値。 |
|  | use |  | 1..1 | code | "official" |  | 氏名が正式名称であることを明示するために、NameUseバリューセット（http:// hl7.org/fhir/ValueSet/name-use）より「official」を必須で設定する。 |
|  | text |  | 1..1 | string | "職員 太郎" |  | 氏名全体の文字列をtext要素に入れる。氏名の姓と名が分離できない場合は本要素のみを使用する。姓と名の間には原則として半角空白を1個挿入する。 |
|  | family |  | 0..1 | string | "職員" |  | 氏名の姓。 |
|  | given |  | 0..* | string | "太郎" |  | 氏名の名。ミドルネームがある場合には、ミドルネーム、名の順で原則として半角空白をいれて連結する文字列とする。 |
|  name |  |  | 0..1 | HumanName |  | /CD/authenticator/assignedEntity/assignedPerson/<BR>name | 職員名よみ（カタカナ） |
|  | extension |  | 1..* |  |  |  | 氏名が漢字表記かカナ表記かを区別するための拡張「iso21090-EN-representation」。 |
|  |  | url | 1..1 | uri | "http:// hl7.org/fhir/StructureDefinition/iso21090<BR>-EN-representation" |  | 拡張を識別するURL。固定値。 |
|  |  | valueCode | 1..1 | code | "SYL" |  | カナ表記であることを示す固定値。 |
|  | use |  | 1..1 | code | "official" |  | 氏名が正式名称であることを明示するために、NameUseバリューセット（http:// hl7.org/fhir/ValueSet/name-use）より「official」を必須で設定する。 |
|  | text |  | 1..1 | string | "ショクイン タロウ" |  | カナ氏名全体の文字列をtext要素に入れる。氏名の姓と名が分離できない場合は本要素のみを使用する。カタカナはJIS X 0208のカタカナ（全角カナ）みとし、JIS X 0201のカタカナ（半角カナ）は使用してはならない。姓と名の間には原則として半角空白を1個挿入する。 |
|  | family |  | 0..1 | string | "ショクイン" |  | カナ氏名の姓。 |
|  | given |  | 0..* | string | "タロウ" |  | カナ氏名の名。ミミドルネームがある場合には、ミドルネーム、名の順で原則として半角空白をいれて連結する文字列とする。 |
|  telecom |  |  | 0..* | ContactPoint |  | /CD/authenticator/assignedEntity/telecom | 職員の連絡先。 |
|  | system |  | 1..1 | code | "phone" | /CD/authenticator/assignedEntity/telecom/@value<BR>"tel:xxxxx" → "phone"<BR>"fax:xxxxxx" → "fax" | 連絡手段 phone \| fax \| email \| pager \| url \| sms \| other。値は例示。 |
|  | value |  | 1..1 | string | "03-1234-5678" | /CD/authenticator/assignedEntity/telecom/@value | 電話番号。値は例示。 |
|  | use |  | 1..1 | code | "home" | /CD/authenticator/assignedEntity/telecom/@use | 用途　home \| work \| temp \| old \| mobile。値は例示。 |
|  address |  |  | 0..* | Address |  | /CD/authenticator/assignedEntity/addr | 職員の住所。 |
|  | use |  | 1..1 | code | "home" | /CD/authenticator/assignedEntity/addr/@use | 用途　home \| work \| temp \| old \| billing |
|  | text |  | 0..1 | string | "東京都江戸川区南葛西３－１－２" | /CD/authenticator/assignedEntity/addr/text() | 住所文字列。値は例示。郵便番号は含めない。 |
|  | line |  | 0..1 | string | "南葛西１－２－３" | /CD/authenticator/assignedEntity/addr/<BR>streetAddressLine | 番地・通り名他。丁目、番地、通り名、マンション名、部屋番号、そのほか住所を構成するcityまでの部分以外のすべての文字列。値は例示。 |
|  | city |  | 0..1 | string | "江戸川区" | /CD/authenticator/assignedEntity/addr/city | 市町村郡名、区名、大字名など。丁目や番地などを除く。値は例示。 |
|  | state |  | 0..1 | string | "東京都" | /CD/authenticator/assignedEntity/addr/state | 都道府県名で、都道府県の文字を含む。例：東京都　など（「東京」ではなく）。値は例示。 |
|  | postalCode |  | 0..1 | string | "134-0085" | /CD/authenticator/assignedEntity/addr/postalCode | 郵便番号。値は例示。 |
|  | country |  | 0..1 | string | "JP" | /CD/authenticator/assignedEntity/addr/country | 居住地が国内の場合「JP」固定。 |

### 表10 検査実施情報Procedureリソースの仕様

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 要素Lv4 | 多重度 | 型 | 値 | 生理検査レポートCDAとのマッピング<BR>(CD=ClinicalDocument) | 説明 |
|---|---|---|---|---|---|---|---|---|
| resourceType |  |  |  |  |  | "Procedure" |  | Procedureリソースであることを示す。 |
| meta |  |  |  | 1..1 | Meta |  |  |  |
|  | lastUpdated |  |  | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile |  |  | 1..1 | canonical(StructureDefinition) | "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/<BR>JP_Procedure_SEAMAT" |  | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
|  identifier |  |  |  | 0..1 | Identifier |  |  | <オーダ番号> |
|  | type |  |  | 1..1 | CodeableConcept |  |  |  |
|  |  | coding |  | 1..1 | Coding |  |  |  |
|  |  |  | system | 1..1 | uri | "http://terminology.hl7.org/CodeSystem/v2-0203" |  |  |
|  |  |  | code | 1..1 | code | "PLAC" |  |  |
|  |  |  | display | 0..1 | string | "Placer Identifier" |  |  |
|  | system |  |  | 1..1 | uri | "http://jpfhir.jp/fhir/SEAMAT/IdSystem/placer-orde<BR>r-no" |  |  |
|  | value |  |  | 0..1 | string |  |  |  |
|  identifier |  |  |  | 0..1 | Identifier |  |  | <部門管理番号> |
|  | type |  |  | 1..1 | CodeableConcept |  |  |  |
|  |  | coding |  | 1..1 | Coding |  |  |  |
|  |  |  | system | 1..1 | uri | "http://terminology.hl7.org/CodeSystem/v2-0203" |  |  |
|  |  |  | code | 1..1 | code | "FILL" |  |  |
|  |  |  | display | 1..1 | string | "Filler Identifier" |  |  |
|  | system |  |  | 1..1 | uri | "http://jpfhir.jp/fhir/SEAMAT/IdSystem/filler-orde<BR>r-no" |  |  |
|  | value |  |  | 0..1 | string |  |  |  |
|  identifier |  |  |  | 0..1 | Identifier |  |  | <データ管理番号> |
|  | system |  |  | 1..1 | uri | "http://jpfhir.jp/fhir/SEAMAT/IdSystem/filler-data<BR>-no/<部門管理番号>" |  |  |
|  | value |  |  | 0..1 | string |  |  |  |
|  identifier |  |  |  | 1..1 | Identifier |  |  | この文書の文書ID。 |
|  | system |  |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/documentInsta<BR>nce-identifier" |  | 文書IDに対する名前空間識別子。固定値。 |
|  | value |  |  | 1..1 | string | "1234567890_20231205_LJCS-100D_20231205101112.94.1<BR>4239.1002_20231205112233_100_1" |  | 文書IDの文字列。値は例示。 | | | | | | |
|  category |  |  |  | 1..1 | CodeableConcept |  |  |  |
|  | coding |  |  | 1..1 | Coding |  |  |  |
|  |  | system |  | 1..1 | uri | "http://jpfhir.jp/fhir/SEAMAT/CodeSystem/JP_Servic<BR>eRequest_Category_SEAMAT_DataType_CS" |  |  |
|  |  | code |  | 1..1 | code | "LJCS-100D" |  | <データ種別コード><レポート/データフラグ><BR>SEAMATで指定されたデータ種別コードとデータフラグを合成したテキストをセットする。値は例示。 |
|  |  | display |  | 1..1 | string | "心電図検査データ" |  | データ種別コードとデータフラグの名称を合成したテキストをセットする。値は例示。 | |
|  subject |  |  |  | 1..1 | Reference(Patient) |  |  | 患者情報を表すPatientリソースへの参照。 |
|  | reference |  |  | 1..1 | string | "urn:uuid:77fbc1a7-8e7e-494c-9763-6545a73afcc4" |  | PatientリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 | |
|  performed[x] |  |  |  | 1..1 |  |  |  |  |
|  |  performedDateTime |  |  | 1..1 | dateTime | "2023-12-05" |  | <検査日><BR>心電図検査の検査日をYYYY-MM-DD形式で指定する。値は例示。 | | | | | | |
|  performer |  |  |  | 0..1 | BackboneElement |  |  |  | |
|  |  actor |  |  | 1..1 | Reference(PractitionerRole) |  |  | 実施者役割PractitionerRoleリソースへの参照。 | | | | | | | | | | | | | | | | |
|  |  | reference |  | 1..1 | string | "urn:uuid:58288829-7c0d-45ec-8a5a-99b4d3976a65" |  | PractitionerRoleリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |

### 表11 検査実施者役割PractitionerRoleリソースの仕様

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 生理検査レポートCDAとのマッピング<BR>(CD=ClinicalDocument) | 説明 |
|---|---|---|---|---|---|---|---|
| resourceType |  |  |  |  | "PractitionerRole" | /CD/documentationOf/serviceEvent | PractitionerRoleリソースであることを示す。 |
| meta |  |  | 1..1 | Meta |  |  |  |
|  | lastUpdated |  | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile |  | 1..1 | canonical(StructureDefinition) | "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/<BR>JP_PractitionerRole_SEAMAT_Performer" |  | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
|  identifier |  |  | 1..1 | Identifier |  |  | この文書の文書ID。 |
|  | system |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/documentInsta<BR>nce-identifier" |  | 文書IDに対する名前空間識別子。固定値。 |
|  | value |  | 1..1 | string | "1234567890_20231205_LJCS-100D_20231205101112.94.1<BR>4239.1002_20231205112233_100_1" |  | 文書IDの文字列。値は例示。 |
|  active |  |  | 0..1 | boolean | true |  | このPractitionerRoleリソースのレコードがアクティブかどうか。固定値。 |
|  period |  |  | 0..1 | Period |  | /CD/documentationOf/serviceEvent/effectiveTime | この役割の有効期間 |
|  | start |  | 0..1 | dateTime | "2023-12-21" | /CD/documentationOf/serviceEvent/effectiveTime/low | 有効期間の開始日。値は例示。 |
|  | end |  | 0..1 | dateTime | "2023-12-31" | /CD/documentationOf/serviceEvent/effectiveTime/high | 有効期間の終了日。値は例示。 |
|  practitioner |  |  | 0..1 | Reference(Practitioner) |  | /CD/documentationOf/serviceEvent/performer/<BR>assignedEntity | 検査実施者Practitionerリソースへの参照。 |
|  | reference | reference | 1..1 | string | "urn:uuid:f83bbdac-8aab-48fa-96e1-6fa2c73d66d1" |  | PractitionerリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 | |
|  code |  |  | 0..1 | CodeableConcept |  | /CD/documentationOf/serviceEvent/performer/<BR>functionCode | この職員の役割コード |
|  | coding |  | 1..1 | Coding |  |  |  |
|  |  | system | 1..1 | uri |  | /CD/documentationOf/serviceEvent/performer/<BR>functionCode/@codeSystem |  |
|  |  | code | 1..1 | code |  | /CD/documentationOf/serviceEvent/performer/<BR>functionCode/@code |  |
|  |  | display | 1..1 | string |  | /CD/documentationOf/serviceEvent/performer/<BR>functionCode/@displayName |  | | | | | | | | | | | | | | |

### 表12 検査実施者Practitionerリソースの仕様

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 生理検査レポートCDAとのマッピング<BR>(CD=ClinicalDocument) | 説明 |
|---|---|---|---|---|---|---|---|
| resourceType |  |  |  |  | "Practitioner" | /CD/documentationOf/serviceEvent/performer/<BR>assignedEntity | Practitionerリソースであることを示す。 |
| meta |  |  | 1..1 | Meta |  |  |  |
|  | lastUpdated |  | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile |  | 1..1 | canonical(StructureDefinition) | http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/J<BR>P_Practitioner_SEAMAT_Performer |  | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
|  identifier |  |  | 0..* | Identifier |  | /CD/documentationOf/serviceEvent/performer/<BR>assignedEntity/id | 医療機関における職員のID。 |
|  | system |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/resourceInsta<BR>nce-identifier" |  | 職員IDに対する名前空間識別子。固定値。 |
|  | value |  | 1..1 | string | "1234678" | /CD/documentationOf/serviceEvent/performer/<BR>assignedEntity/id/@extension | 職員IDの文字列。値は例示。 |
|  identifier |  |  | 1..1 | Identifier |  |  | この文書の文書ID。 |
|  | system |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/documentInsta<BR>nce-identifier" |  | 文書IDに対する名前空間識別子。固定値。 |
|  | value |  | 1..1 | string | "1234567890_20231205_LJCS-100D_20231205101112.94.1<BR>4239.1002_20231205112233_100_1" |  | 文書IDの文字列。値は例示。 |
|  active |  |  | 0..1 | boolean | true |  |  |
|  name |  |  | 0..1 | HumanName |  | /CD/documentationOf/serviceEvent/performer/<BR>assignedEntity/assignedPerson/name | 職員名　漢字表記 |
|  | extension |  | 1..* |  |  |  | 氏名が漢字表記かカナ表記かを区別するための拡張「iso21090-EN-representation」。 |
|  |  | url | 1..1 | uri | "http:// hl7.org/fhir/StructureDefinition/iso21090<BR>-EN-representation" |  | 拡張を識別するURL。固定値。 |
|  |  | valueCode | 1..1 | code | "IDE" |  | 漢字表記であることを示す固定値。 |
|  | use |  | 1..1 | code | "official" |  | 氏名が正式名称であることを明示するために、NameUseバリューセット（http:// hl7.org/fhir/ValueSet/name-use）より「official」を必須で設定する。 |
|  | text |  | 1..1 | string | "職員 太郎" |  | 氏名全体の文字列をtext要素に入れる。氏名の姓と名が分離できない場合は本要素のみを使用する。姓と名の間には原則として半角空白を1個挿入する。 |
|  | family |  | 0..1 | string | "職員" |  | 氏名の姓。 |
|  | given |  | 0..* | string | "太郎" |  | 氏名の名。ミドルネームがある場合には、ミドルネーム、名の順で原則として半角空白をいれて連結する文字列とする。 |
|  name |  |  | 0..1 | HumanName |  | /CD/documentationOf/serviceEvent/performer/<BR>assignedEntity/assignedPerson/name | 職員名よみ（カタカナ） |
|  | extension |  | 1..* |  |  |  | 氏名が漢字表記かカナ表記かを区別するための拡張「iso21090-EN-representation」。 |
|  |  | url | 1..1 | uri | "http:// hl7.org/fhir/StructureDefinition/iso21090<BR>-EN-representation" |  | 拡張を識別するURL。固定値。 |
|  |  | valueCode | 1..1 | code | "SYL" |  | カナ表記であることを示す固定値。 |
|  | use |  | 1..1 | code | "official" |  | 氏名が正式名称であることを明示するために、NameUseバリューセット（http:// hl7.org/fhir/ValueSet/name-use）より「official」を必須で設定する。 |
|  | text |  | 1..1 | string | "ショクイン タロウ" |  | カナ氏名全体の文字列をtext要素に入れる。氏名の姓と名が分離できない場合は本要素のみを使用する。カタカナはJIS X 0208のカタカナ（全角カナ）みとし、JIS X 0201のカタカナ（半角カナ）は使用してはならない。姓と名の間には原則として半角空白を1個挿入する。 |
|  | family |  | 0..1 | string | "ショクイン" |  | カナ氏名の姓。 |
|  | given |  | 0..* | string | "タロウ" |  | カナ氏名の名。ミミドルネームがある場合には、ミドルネーム、名の順で原則として半角空白をいれて連結する文字列とする。 |
|  telecom |  |  | 0..* | ContactPoint |  | /CD/documentationOf/serviceEvent/performer/<BR>assignedEntity/telecom | 職員の連絡先。 |
|  | system |  | 1..1 | code | "phone" | /CD/documentationOf/serviceEvent/performer/<BR>assignedEntity/telecom/@value<BR>"tel:xxxxx" → "phone"<BR>"fax:xxxxxx" → "fax" | 連絡手段 phone \| fax \| email \| pager \| url \| sms \| other。値は例示。 |
|  | value |  | 1..1 | string | "03-1234-5678" | /CD/documentationOf/serviceEvent/performer/<BR>assignedEntity/telecom/@value | 電話番号。値は例示。 |
|  | use |  | 1..1 | code | "home" | /CD/documentationOf/serviceEvent/performer/<BR>assignedEntity/telecom/@use | 用途　home \| work \| temp \| old \| mobile。値は例示。 |
|  address |  |  | 0..* | Address |  | /CD/documentationOf/serviceEvent/performer/<BR>assignedEntity/addr | 職員の住所。 |
|  | use |  | 1..1 | code | "home" | /CD/documentationOf/serviceEvent/performer/<BR>assignedEntity/addr/@use | 用途　home \| work \| temp \| old \| billing |
|  | text |  | 0..1 | string | "東京都江戸川区南葛西３－１－２" | /CD/documentationOf/serviceEvent/performer/<BR>assignedEntity/addr/text() | 住所文字列。値は例示。郵便番号は含めない。 |
|  | line |  | 0..1 | string | "南葛西１－２－３" | /CD/documentationOf/serviceEvent/performer/<BR>assignedEntity/addr/streetAddressLine | 番地・通り名他。丁目、番地、通り名、マンション名、部屋番号、そのほか住所を構成するcityまでの部分以外のすべての文字列。値は例示。 |
|  | city |  | 0..1 | string | "江戸川区" | /CD/documentationOf/serviceEvent/performer/<BR>assignedEntity/addr/addr/city | 市町村郡名、区名、大字名など。丁目や番地などを除く。値は例示。 |
|  | state |  | 0..1 | string | "東京都" | /CD/documentationOf/serviceEvent/performer/<BR>assignedEntity/addr/state | 都道府県名で、都道府県の文字を含む。例：東京都　など（「東京」ではなく）。値は例示。 |
|  | postalCode |  | 0..1 | string | "134-0085" | /CD/documentationOf/serviceEvent/performer/<BR>assignedEntity/addr/postalCode | 郵便番号。値は例示。 |
|  | country |  | 0..1 | string | "JP" | /CD/documentationOf/serviceEvent/performer/<BR>assignedEntity/addr/country | 居住地が国内の場合「JP」固定。 | | | | | | | | | |

### 表13 Compositionリソースのsectionの仕様

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 要素Lv4 | 多重度 | 型 | 値 | 生理検査レポートCDAとのマッピング<BR>(CD=ClinicalDocument) | 説明 |
|---|---|---|---|---|---|---|---|---|
|  section |  |  |  | 0..1 | BackboneElement |  |  |  |
|  |  title |  |  | 0..1 | string | "バイタルサイン" | /CD/component/structuredBody/component/section/<BR>title | ○○セクション名のうち○○の部分文字列を設定する。値は例示。 |
|  |  code |  |  | 1..1 | CodeableConcept |  | /CD/component/structuredBody/component/section/code |  |
|  |  | coding |  | 1..1 | Coding |  |  |  |
|  |  |  | system | 1..1 | uri | "http://jpfhir.jp/fhir/SEAMAT/CodeSystem/JP_Compos<BR>ition_SEAMAT_SectionCode_CS" | /CD/component/structuredBody/component/section/code/<BR>@codeSystem | 文書のセクションコードシステムの固定値。<BR>検査項目セクションの場合は、JLAC10を表す"urn:oid:1.2.392.200119.4.1005"ないしJJ1017を表す"urn:oid:1.2.392.200119.4.1201"、それ以外の場合は、LOINCを表す"http://jpfhir.jp/fhir/SEAMAT/CodeSystem/JP_Composition_SEAMAT_SectionCode_CS"固定 |
|  |  |  | code | 1..1 | code | "74728-7" | /CD/component/structuredBody/component/section/code/<BR>@code | セクションコードを設定する。値は例示。 |
|  |  |  | display | 1..1 | string | "バイタルサインセクション" | /CD/component/structuredBody/component/section/code/<BR>@displayName | セクション名を設定する。値は例示。 |
|  |  author |  |  | 0..1 | Reference(Practitioner \|  Device) |  | /CD/component/structuredBody/component/section/<BR>author | 測定者Practitionerリソースないし測定システムDeviceリソースへの参照。 |
|  |  | reference |  | 1..1 | string | "urn:uuid:fa0a5511-9e07-4fe0-9505-ebf7c9067e57" |  | PractitionerリソースないしDeviceリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
|  |  text |  |  | 0..1 | Narrative |  | /CD/component/structuredBody/component/section/text |  |
|  |  entry |  |  | 0..* | Reference(Observation \| DocumentReference \| Binary) |  | /CD/component/structuredBody/component/section/<BR>entry | 測定値/解析結果Observationリソースないし外部参照DocumentReferenceリソースないし外部参照Binaryリソースへの参照。 |
|  |  | reference |  | 1..1 | string | "urn:uuid:d4d71934-e535-4029-a4c8-a4d098359e4d" |  | ObservationリソースないしDocumentReferenceリソースないしBinaryリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |

### 表14 測定者Practitionerリソースの仕様

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 生理検査レポートCDAとのマッピング<BR>(CD=ClinicalDocument) | 説明 |
|---|---|---|---|---|---|---|---|
| resourceType |  |  |  |  | "Practitioner" | /CD/component/structuredBody/component/section/<BR>author/assignedAuthor | Practitionerリソースであることを示す。 |
| meta |  |  | 1..1 | Meta |  |  |  |
|  | lastUpdated |  | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile |  | 1..1 | canonical(StructureDefinition) | http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/J<BR>P_Practitioner_SEAMAT_Measurer |  | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
|  identifier |  |  | 0..* | Identifier |  | /CD/component/structuredBody/component/section/<BR>author/assignedAuthor/id | 医療機関における職員のID。 |
|  | system |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/resourceInsta<BR>nce-identifier" |  | 職員IDに対する名前空間識別子。固定値。 |
|  | value |  | 1..1 | string | "1234678" | /CD/component/structuredBody/component/section/<BR>author/assignedAuthor/id/@extension | 職員IDの文字列。値は例示。 |
|  identifier |  |  | 1..1 | Identifier |  |  | この文書の文書ID。 |
|  | system |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/documentInsta<BR>nce-identifier" |  | 文書IDに対する名前空間識別子。固定値。 |
|  | value |  | 1..1 | string | "1234567890_20231205_LJCS-100D_20231205101112.94.1<BR>4239.1002_20231205112233_100_1" |  | 文書IDの文字列。値は例示。 |
|  active |  |  | 0..1 | boolean | true |  |  |
|  name |  |  | 0..1 | HumanName |  | /CD/component/structuredBody/component/section/<BR>author/assignedAuthor/assignedPerson/name | 職員名　漢字表記 |
|  | extension |  | 1..* |  |  |  | 氏名が漢字表記かカナ表記かを区別するための拡張「iso21090-EN-representation」。 |
|  |  | url | 1..1 | uri | "http://hl7.org/fhir/StructureDefinition/iso21090-<BR>EN-representation" |  | 拡張を識別するURL。固定値。 |
|  |  | valueCode | 1..1 | code | "IDE" |  | 漢字表記であることを示す固定値。 |
|  | use |  | 1..1 | code | "official" |  | 氏名が正式名称であることを明示するために、NameUseバリューセット（http:// hl7.org/fhir/ValueSet/name-use）より「official」を必須で設定する。 |
|  | text |  | 1..1 | string | "職員 太郎" |  | 氏名全体の文字列をtext要素に入れる。氏名の姓と名が分離できない場合は本要素のみを使用する。姓と名の間には原則として半角空白を1個挿入する。 |
|  | family |  | 0..1 | string | "職員" |  | 氏名の姓。 |
|  | given |  | 0..* | string | "太郎" |  | 氏名の名。ミドルネームがある場合には、ミドルネーム、名の順で原則として半角空白をいれて連結する文字列とする。 |
|  name |  |  | 0..1 | HumanName |  | /CD/component/structuredBody/component/section/<BR>author/assignedAuthor/assignedPerson/name | 職員名よみ（カタカナ） |
|  | extension |  | 1..* |  |  |  | 氏名が漢字表記かカナ表記かを区別するための拡張「iso21090-EN-representation」。 |
|  |  | url | 1..1 | uri | "http://hl7.org/fhir/StructureDefinition/iso21090-<BR>EN-representation" |  | 拡張を識別するURL。固定値。 |
|  |  | valueCode | 1..1 | code | "SYL" |  | カナ表記であることを示す固定値。 |
|  | use |  | 1..1 | code | "official" |  | 氏名が正式名称であることを明示するために、NameUseバリューセット（http:// hl7.org/fhir/ValueSet/name-use）より「official」を必須で設定する。 |
|  | text |  | 1..1 | string | "ショクイン タロウ" |  | カナ氏名全体の文字列をtext要素に入れる。氏名の姓と名が分離できない場合は本要素のみを使用する。カタカナはJIS X 0208のカタカナ（全角カナ）みとし、JIS X 0201のカタカナ（半角カナ）は使用してはならない。姓と名の間には原則として半角空白を1個挿入する。 |
|  | family |  | 0..1 | string | "ショクイン" |  | カナ氏名の姓。 |
|  | given |  | 0..* | string | "タロウ" |  | カナ氏名の名。ミミドルネームがある場合には、ミドルネーム、名の順で原則として半角空白をいれて連結する文字列とする。 |
|  telecom |  |  | 0..* | ContactPoint |  | /CD/component/structuredBody/component/section/<BR>author/assignedAuthor/telecom | 職員の連絡先。 |
|  | system |  | 1..1 | code | "phone" | /CD/component/structuredBody/component/section/<BR>author/assignedAuthor/telecom/@value<BR>"tel:xxxxx" → "phone"<BR>"fax:xxxxxx" → "fax" | 連絡手段 phone \| fax \| email \| pager \| url \| sms \| other。値は例示。 |
|  | value |  | 1..1 | string | "03-1234-5678" | /CD/component/structuredBody/component/section/<BR>author/assignedAuthor/telecom/@value | 電話番号。値は例示。 |
|  | use |  | 1..1 | code | "home" | /CD/component/structuredBody/component/section/<BR>author/assignedAuthor/telecom/@use | 用途　home \| work \| temp \| old \| mobile。値は例示。 |
|  address |  |  | 0..* | Address |  | /CD/component/structuredBody/component/section/<BR>author/assignedAuthor/addr | 職員の住所。 |
|  | use |  | 1..1 | code | "home" | /CD/component/structuredBody/component/section/<BR>author/assignedAuthor/addr/@use | 用途　home \| work \| temp \| old \| billing |
|  | text |  | 0..1 | string | "東京都江戸川区南葛西３－１－２" | /CD/documentationOf/serviceEvent/performer/<BR>assignedEntity/addr/text() | 住所文字列。値は例示。郵便番号は含めない。 |
|  | line |  | 0..1 | string | "南葛西１－２－３" | /CD/component/structuredBody/component/section/<BR>author/assignedAuthor/addr/addr/streetAddressLine | 番地・通り名他。丁目、番地、通り名、マンション名、部屋番号、そのほか住所を構成するcityまでの部分以外のすべての文字列。値は例示。 |
|  | city |  | 0..1 | string | "江戸川区" | /CD/component/structuredBody/component/section/<BR>author/assignedAuthor/addr/city | 市町村郡名、区名、大字名など。丁目や番地などを除く。値は例示。 |
|  | state |  | 0..1 | string | "東京都" | /CD/component/structuredBody/component/section/<BR>author/assignedAuthor/addr/state | 都道府県名で、都道府県の文字を含む。例：東京都　など（「東京」ではなく）。値は例示。 |
|  | postalCode |  | 0..1 | string | "134-0085" | /CD/docomponent/structuredBody/component/section/<BR>author/assignedAuthor/addr/postalCode | 郵便番号。値は例示。 |
|  | country |  | 0..1 | string | "JP" | /CD/component/structuredBody/component/section/<BR>author/assignedAuthor/addr/country | 居住地が国内の場合「JP」固定。 |

### 表15 測定システムDeviceリソースの仕様

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 生理検査レポートCDAとのマッピング<BR>(CD=ClinicalDocument) | 説明 |
|---|---|---|---|---|---|---|---|
| resourceType |  |  |  |  | "Device" | /CD/component/structuredBody/component/section/<BR>author/assignedAuthor | Deviceリソースであることを示す。 |
| meta |  |  | 1..1 | Meta |  |  |  |
|  | lastUpdated |  | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile |  | 1..1 | canonical(StructureDefinition) | http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/J<BR>P_Device_SEAMAT_Measurer |  | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
|  identifier |  |  | 0..1 | Identifier |  | /CD/component/structuredBody/component/section/<BR>author/assignedAuthor/id | 測定システムのID |
|  | system |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/resourceInsta<BR>nce-identifier" |  | 測定システムIDに対する名前空間識別子。固定値。 |
|  | value |  | 1..1 | string | "1234678" |  | 測定システムIDの文字列。値は例示。 |
|  identifier |  |  | 1..1 | Identifier |  |  | この文書の文書ID。 |
|  | system |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/documentInsta<BR>nce-identifier" |  | 文書IDに対する名前空間識別子。固定値。 |
|  | value |  | 1..1 | string | "1234567890_20231205_LJCS-100D_20231205101112.94.1<BR>4239.1002_20231205112233_100_1" |  | 文書IDの文字列。値は例示。 | | | | | | | | |
|  status |  |  | 0..1 | code | active |  | 測定システムのレコードがアクティブかどうか。固定値。 | | | | | | | |
|  deviceName |  |  | 0..1 | BackboneElement |  |  |  |
|  |  name |  | 1..1 | string | "FCP-7541" | /CD/component/structuredBody/component/section/<BR>author/assignedAuthor/assignedAuthoringDevice/<BR>manufacturerModelName | 測定システムのモデル名。値は例示。 |
|  |  type |  | 1..1 | code | "model-name" |  | デバイス名の種類。バリューセット（"http://hl7.org/fhir/ValueSet/device-nametype"）からモデル名を表す"model-name"を固定で設定する。 |
|  deviceName |  |  | 0..1 | BackboneElement |  |  |  |
|  |  name |  | 1..1 | string | "ResultSender" | /CD/component/structuredBody/component/section/<BR>author/assignedAuthor/assignedAuthoringDevice/<BR>softwareName | 測定システムのソフトウェア名。値は例示。 |
|  |  type |  | 1..1 | code | "other" |  | デバイス名の種類。バリューセット（"http://hl7.org/fhir/ValueSet/device-nametype"）からその他を表す"other"を固定で設定する。 |

### 表16 測定値／解析結果Observationリソースの仕様

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 要素Lv4 | 要素Lv5 | 多重度 | 型 | 値 | 生理検査レポートCDAとのマッピング<BR>(CD=ClinicalDocument) | 説明 |
|---|---|---|---|---|---|---|---|---|---|
| resourceType |  |  |  |  |  |  | "Observation" | /CD/component/structuredBody/component/section/<BR>entry/observation | Observationリソースであることを示す。 |
| meta |  |  |  |  | 1..1 | Meta |  |  |  |
|  | lastUpdated |  |  |  | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile |  |  |  | 1..1 |  | "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/<BR>JP_Observation_SEAMAT" |  | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
|  identifier |  |  |  |  | 1..1 | Identifier |  |  | このリソースのID。 |
|  | system |  |  |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/resourceInsta<BR>nce-identifier" |  | リソースIDに対する名前空間識別子。固定値。 |
|  | value |  |  |  | 1..1 | string | "1234567890_20231205_LJCS-100D_20231205101112.94.1<BR>4239.1002_20231205112233_100_1.1" |  | リソースIDの文字列。値は例示。 |
|  identifier |  |  |  |  | 1..1 | Identifier |  |  | この文書の文書ID。 |
|  | system |  |  |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/documentInsta<BR>nce-identifier" |  | 文書IDに対する名前空間識別子。固定値。 |
|  | value |  |  |  | 1..1 | string | "1234567890_20231205_LJCS-100D_20231205101112.94.1<BR>4239.1002_20231205112233_100_1" |  | 文書IDの文字列。値は例示。 |
|  status |  |  |  |  | 1..1 | code | "final" |  | 検査・観察のステータス。固定値。 |
|  category |  |  |  |  | 0..* | CodeableConcept |  |  |  |
|  code |  |  |  |  | 1..1 | CodeableConcept |  | /CD/component/structuredBody/component/section/<BR>entry/observation/code | 検査・観察の項目コード。 |
|  | coding |  |  |  | 1..1 | Coding |  |  |  |
|  |  | system |  |  | 1..1 | uri | "http://loinc.org" |  |  |
|  |  | code |  |  | 1..1 | code | "30525-0" |  |  |
|  |  | display |  |  | 0..1 | string | "年齢" |  |  |
|  subject |  |  |  |  | 0..1 | Reference(Patient) |  |  |  |
|  | reference |  |  |  | 1..1 | string | "urn:uuid:77fbc1a7-8e7e-494c-9763-6545a73afcc4" |  | PatientリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 | | | | | | | | | |
|  value[x] |  |  |  |  | 0..1 |  |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value | 検査結果や観察結果。11通りのいずれかの子要素のひとつを選択して、それにより記述する。複数を選択はできない。value要素は記述しないで、直接valueQuantity要素のレベルを記述する。 |
|  |  valueQuantity |  |  |  |  | Quantity |  |  | @xsi:type="PQ"の場合 |
|  |  | value |  |  | 1..1 | decimal | 86.0 | /CD/component/structuredBody/component/section/<BR>entry/observation/value/@value |  |
|  |  | unit |  |  | 0..1 | string | "a" | /CD/component/structuredBody/component/section/<BR>entry/observation/value/@unit |  |
|  |  valueCodeableConcept |  |  |  |  | CodeableConcept |  |  | @xsi:type="CE"の場合 |
|  |  | coding |  |  | 1..1 | Coding |  |  |  |
|  |  |  | system |  | 1..1 | uri |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/@codeSystem |  |
|  |  |  | code |  | 1..1 | code | "LA22649-0" | /CD/component/structuredBody/component/section/<BR>entry/observation/value/@code |  |
|  |  |  | display |  | 0..1 | string | "Rest" | /CD/component/structuredBody/component/section/<BR>entry/observation/value/@displayName |  |
|  |  valueString |  |  |  |  | string |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/text() | @xsi:type="ST"の場合 | | |
|  |  valueRange |  |  |  |  | Range |  |  | @xsi:type="IVL_PQ"の場合 |
|  |  | low |  |  | 0..1 | Quantity |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/low |  |
|  |  |  | value |  | 1..1 | decimal |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/low/@value |  |
|  |  |  | unit |  | 0..1 | string |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/low/@unit |  |
|  |  | high |  |  | 0..1 | Quantity |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/high |  |
|  |  |  | value |  | 1..1 | decimal |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/high/@value |  |
|  |  |  | unit |  | 0..1 | string |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/high/@unit |  |
|  |  valueRatio |  |  |  |  | Ratio |  |  | @xsi:type="RTO_PQ_PQ"の場合 |
|  |  | numerator |  |  | 0..1 | Quantity |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/numerator |  |
|  |  |  | value |  | 1..1 | decimal | 93 | /CD/component/structuredBody/component/section/<BR>entry/observation/value/numerator/@value |  |
|  |  |  | unit |  | 0..1 | string |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/numerator/@unit |  |
|  |  | denominator |  |  | 0..1 | Quantity |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/denominator |  |
|  |  |  | value |  | 1..1 | decimal | 1.0 | /CD/component/structuredBody/component/section/<BR>entry/observation/value/denominator/@value |  |
|  |  |  | unit |  | 0..1 | string | "bpm" | /CD/component/structuredBody/component/section/<BR>entry/observation/value/denominator/@unit |  | | | | |
|  dataAbsentReason |  |  |  |  | 0..1 | CodeableConcept |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/@nullFlavor | 検査結果値が欠落している理由。 | | | | | | | | | | | | | | | |
|  component |  |  |  |  | 0..* | BackboneElement |  |  | 同じ検査・観察において、メソッドが1つ、観察が1つ、実行者が1つ、デバイスが1つ、時間が1つしかない１回の検査・観察で同時に複数の検査結果が得られる場合に、その各検査をcomponentをみなして、このObservationリソースのcomponent要素に記述する。たとえばこのObservationリソースが血圧である場合に、収縮期血圧値と拡張期血圧値の2つは、Observationリソース：血圧の2つのcomponentとして記述される。 |
|  |  code |  |  |  | 1..1 | CodeableConcept |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/entryRelationship/<BR>observation/code | Observation.codeと同じ。 |
|  |  value[x] |  |  |  | 0..1 |  |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/entryRelationship/<BR>observation/value | Observation.value[x]と同じ。 |
|  |  |  valueQuantity |  |  |  | Quantity |  |  | @xsi:type="PQ"の場合 |
|  |  |  | value |  | 1..1 | decimal |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/entryRelationship/<BR>observation/value@value |  |
|  |  |  | unit |  | 0..1 | string |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/entryRelationship/<BR>observation/value@unit |  |
|  |  |  valueCodeableConcept |  |  |  | CodeableConcept |  |  | @xsi:type="CE"の場合 |
|  |  |  | coding |  | 1..1 | Coding |  |  |  |
|  |  |  |  | system | 1..1 | uri |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/entryRelationship/<BR>observation/value/@codeSystem |  |
|  |  |  |  | code | 1..1 | code |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/entryRelationship/<BR>observation/value/@code |  |
|  |  |  |  | display | 0..1 | string |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/entryRelationship/<BR>observation/value/@displayName |  |
|  |  |  valueString |  |  |  | string |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/entryRelationship/<BR>observation/value/text() | @xsi:type="ST"の場合 | | |
|  |  |  valueRange |  |  |  | Range |  |  | @xsi:type="IVL_PQ"の場合 |
|  |  |  | low |  | 0..1 | Quantity |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/entryRelationship/<BR>observation/value/low |  |
|  |  |  |  | value | 1..1 | decimal |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/entryRelationship/<BR>observation/value/low/@value |  |
|  |  |  |  | unit | 0..1 | string |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/entryRelationship/<BR>observation/value/low/@unit |  |
|  |  |  | high |  | 0..1 | Quantity |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/entryRelationship/<BR>observation/value/high |  |
|  |  |  |  | value | 1..1 | decimal |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/entryRelationship/<BR>observation/value/high/@value |  |
|  |  |  |  | unit | 0..1 | string |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/entryRelationship/<BR>observation/value/high/@unit |  |
|  |  |  valueRatio |  |  |  | Ratio |  |  | @xsi:type="RTO_PQ_PQ"の場合 |
|  |  |  | numerator |  | 0..1 | Quantity |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/entryRelationship/<BR>observation/value/numerator |  |
|  |  |  |  | value | 1..1 | decimal |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/entryRelationship/<BR>observation/value/numerator/@value |  |
|  |  |  |  | unit | 0..1 | string |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/entryRelationship/<BR>observation/value/numerator/@unit |  |
|  |  |  | denominator |  | 0..1 | Quantity |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/entryRelationship/<BR>observation/value/denominator |  |
|  |  |  |  | value | 1..1 | decimal |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/entryRelationship/<BR>observation/value/denominator/@value |  |
|  |  |  |  | unit | 0..1 | string |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/entryRelationship/<BR>observation/value/denominator/@unit |  |
|  |  dataAbsentReason |  |  |  | 0..1 | CodeableConcept |  | /CD/component/structuredBody/component/section/<BR>entry/observation/value/entryRelationship/<BR>observation/value/@nullFlavor | Observation.dataAbsentReasonと同じ。 | | |

### 表17 外部参照DocumentReferenceリソースの仕様

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 生理検査レポートCDAとのマッピング<BR>(CD=ClinicalDocument) | 説明 |
|---|---|---|---|---|---|---|---|
| resourceType |  |  |  |  | "DocumentReference" | /CD/component/structuredBody/component/section/<BR>entry/observation | DocumentReferenceリソースであることを示す。 |
| meta |  |  | 1..1 | Meta |  |  |  |
|  | lastUpdated |  | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile |  | 1..1 | canonical(StructureDefinition) | "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/<BR>JP_DocumentReference_SEAMAT" |  | 本リソースのプロファイルを識別するURLを指定する。値は固定。 | | |
|  status |  |  | 1..1 | code | "current" |  | 本リソースのステータス。固定値。 |
|  docStatus |  |  | 0..1 | code | "final" |  | 対象のドキュメントのステータス。固定値。 |
|  type |  |  | 0..1 | CodeableConcept |  | /CD/component/structuredBody/component/section/<BR>entry/observation/code | ドキュメントの区分コード。 |
|  | coding |  | 1..1 | Coding |  |  |  |
|  |  | system | 1..1 | uri | "urn:oid:1.2.392.200119.4.1005" | /CD/component/structuredBody/component/section/<BR>entry/observation/code/@codeSystem | 文書区分コードのコード体系を識別するUR（LOINCコードベース）。値は例示。 |
|  |  | code | 1..1 | code | "9A110" | /CD/component/structuredBody/component/section/<BR>entry/observation/code/@code | 文書区分コード。値は例示。 |
|  |  | display | 0..1 | string | "標準12誘導心電図" | /CD/component/structuredBody/component/section/<BR>entry/observation/code/@displayName | 文書区分コードの表示名。値は例示。 | |
|  subject |  |  | 1..1 | Reference(Patient) |  |  | 患者情報を表すPatientリソースへの参照。 |
|  | reference |  | 1..1 | string | "urn:uuid:77fbc1a7-8e7e-494c-9763-6545a73afcc4" |  | PatientリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 | | | | | | | | | |
|  content |  |  | 1..* | BackboneElement |  |  | 参照されるドキュメントとフォーマット。 |
|  |  attachment |  | 1..1 | Attachment |  |  | ドキュメントまたはドキュメントの URL と、コンテンツの整合性を証明する重要なメタデータ。 |
|  |  | contentType | 0..1 | code | "application/pdf" | /CD/component/structuredBody/component/section/<BR>entry/observation/reference/externalDocument/text/<BR>@mediaType | コンテンツのMIMEタイプ。値は例示。 |
|  |  | data | 0..1 | base64Binary | "JVBERi0xLjcKCjQgMCBvYmoKKElkZW50aXR5KQplb..." | /CD/<リンク先の外部データ本体> | 内包されたデータ。値は例示。 |
|  |  | url | 0..1 | url | "99999999134904_PDF\99999999134904.PDF" | /CD/component/structuredBody/component/section/<BR>entry/observation/reference/externalDocument/<BR>reference/@value | データの格納先のURL。 |
|  |  | hash | 0..1 | base64Binary | "dEZg98P5t76fcYjcVa9JK3Fo0jg=" | /CD/component/structuredBody/component/section/<BR>entry/observation/reference/externalDocument/text/<BR>@integrityCheck | データのSHA-1ハッシュ値。値は例示。 |
|  |  format |  | 0..1 | Coding |  | /CD/component/structuredBody/component/section/<BR>entry/observation/reference/externalDocument/code | ドキュメントのフォーマット。 |
|  |  | system | 1..1 | uri |  | /CD/component/structuredBody/component/section/<BR>entry/observation/reference/externalDocument/code/<BR>@codeSystem |  |
|  |  | code | 1..1 | code |  | /CD/component/structuredBody/component/section/<BR>entry/observation/reference/externalDocument/code/<BR>@code |  |
|  |  | display | 0..1 | string |  | /CD/component/structuredBody/component/section/<BR>entry/observation/reference/externalDocument/code/<BR>@displayName |  | | | | | | | | |

### 表18 外部参照Binaryリソースの仕様

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 生理検査レポートCDAとのマッピング<BR>(CD=ClinicalDocument) | 説明 |
|---|---|---|---|---|---|---|---|
| resourceType |  |  |  |  | "Binary" | /CD/component/structuredBody/component/section/<BR>entry/observation/reference/externalDocument | Binaryリソースであることを示す。 |
| meta |  |  | 1..1 | Meta |  |  |  |
|  | lastUpdated |  | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile |  | 1..1 | canonical(StructureDefinition) | "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/<BR>JP_Binary_SEAMAT" |  | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
|  contentType |  |  | 1..1 | code | "image/jpeg" | /CD/component/structuredBody/component/section/<BR>entry/observation/reference/externalDocument/text/<BR>@mediaType | バイナリデータのMIMEタイプ。値は例示 | |
|  data |  |  | 0..1 | base64Binary | "JVBERi0xLjcKCjQgMCBvYmoKKElkZW50aXR5KQplb..." | /CD/component/structuredBody/component/section/<BR>entry/observationMedia/value/@representation | 実際のデータ。値は例示。 |