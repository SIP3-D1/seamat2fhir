### 表2 Compositionリソースの仕様

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 生理検査レポートCDAとのマッピング<BR>(CD=ClinicalDocument) | 説明 |
|---|---|---|---|---|---|---|---|
| resourceType |  |  |  |  | "Composition" |  | Compositionリソースであることを示す |
| meta |  |  | 1..1 | Meta |  |  |  |
|  | lastUpdated |  | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile |  | 1..1 | canonical(StructureDefinition) | "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/<BR>JP_Composition_EKGReport" | /CD/templateId | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
| extension |  |  | 0..1 | Extension |  |  | 文書バージョンを表す拡張「composition-clinicaldocument-versionNumber」。 |
|  | url |  | 1..1 | uri | "http://hl7.org/fhir/StructureDefinition/compositi<BR>on-clinicaldocument-versionNumber" |  | 拡張を識別するURL。固定値。 |
|  | valueString |  | 1..1 | string | “1” | /CD/versionNumber | 文書のバージョン番号を表す文字列。値は例示。 |
| language |  |  | 0..1 | code | "ja" | /CD/languageCode | この文書の記述言語。値は例示。 |
| identifier |  |  | 0..1 | Identifier |  | /CD/id | この文書の文書ID。 |
|  | system |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/documentInsta<BR>nce-identifier" | /CD/id/@root | 文書IDの名前空間を表すURI。固定値。 |
|  | value |  | 1..1 | string | "1234567890_20231205_LJCS-100D_20231205101112.94.1<BR>4239.1002_20231205112233_200_1" | /CD/id/@extension | 文書ID。値は例示。 |
| status |  |  | 1..1 | code | "final" |  | この文書のステータス。最終版が登録される段階では、”final” でなければならない。 |
| type |  |  | 1..1 | CodeableConcept |  | /CD/code | 文書区分コード |
|  | coding |  | 1..1 | Coding |  |  |  |
|  |  | system | 1..1 | uri | "http://jpfhir.jp/fhir/SEAMAT/CodeSystem/JP_Compos<BR>ition_SEAMAT_DocumentType_CS" | /CD/code/@codeSystem | 文書区分コードのコード体系を識別するUR（LOINCコードベース）。固定値 |
|  |  | code | 1..1 | code | "28010-7" | /CD/code/@code | 文書区分コード。固定値 |
|  |  | display | 0..1 | string | "EKG Report" | /CD/code/@displayName | 文書区分コードの表示名。 |
| category |  |  | 1..* | CodeableConcept |  | /CD/code | 文書クラス（カテゴリー） |
|  | coding |  | 1..1 |  |  |  |  |
|  |  | system | 1..1 | uri | "http://jpfhir.jp/fhir/SEAMAT/CodeSystem/JP_Compos<BR>ition_SEAMAT_DocumentType_CS" | /CD/code/@codeSystem | 文書クラスのコード体系を識別するURI。固定値。 |
|  |  | code | 1..1 | code | "28010-7" | /CD/code/@code | 文書カテゴリコード。固定値 |
|  |  | display | 0..1 | string | "EKG Report" | /CD/code/@displayName | コードの表示名 |
| subject |  |  | 1..1 | Reference(Patient) |  | /CD/recordTraget | 患者情報を表すPatientリソースへの参照。 |
|  | reference |  | 1..1 | string | "urn:uuid:77fbc1a7-8e7e-494c-9763-6545a73afcc4" |  | PatientリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
| date |  |  | 1..1 | dateTime | "2019-03-26T00:43:30+09:00" | /CD/effectiveTime<BR>author/time | このリソースを作成または最後に編集した日時。ISO8601に準拠し、秒の精度まで記録し、タイムゾーンも付記する。午前0時を”24:00”と記録することはできないため”00:00”と記録すること。値は例示。 |
| author |  |  | 1..2 | Reference(Practitioner\|Device\| Organization) |  | /CD/author | 文書作成責任者を表すPractitionerリソースないし作成システムを表すDeviceリソースへの参照、および文書作成機関を表すOrganizationリソースへの参照の2つのReferenceを繰り返す。 |
|  | reference |  | 0..1 | string | "urn:uuid:4b0210b8-9866-4509-9bd9-044120ff2349" |  | 作成者PractitionerリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
|  | reference |  | 0..1 | string | "urn:uuid:a78efb38-13d1-448a-ad68-5e28dfbdc306" |  | 作成システムDevicerリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
|  | reference |  | 0..1 | string | "urn:uuid:6cd03543-6a5b-4396-ab12-cd3b78171e0c" |  | 医療機関OrganizationリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
| title |  |  | 1..1 | string | "心電図検査レポート" | /CD/title | この文書の（人が読める）タイトル。固定値。 |
| confidentiality |  |  | 0..1 | code |  | /CD/confidentialityCode | 機密性を表すコード |
| attester |  |  | 0..* | BackboneElement |  | /CD/authenticator |  |
|  | mode |  | 1..1 | code | "official" |  | 文書内容の承認のタイプ。固定値。 |
|  | time |  | 0..1 | dateTime |  | /CD/authenticator/time | 文書内容を承認した日時。 |
|  | party |  | 0..1 | Reference(Practitioner) |  | /CD/authenticator/assignedEntity | 文書内容責任者Practitionerリソースへの参照。 |
|  |  | reference | 0..1 | string | "urn:uuid:e6597c74-c7e0-46ba-85fd-826eab41b01f" |  | 文書内容責任者PractitionerリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
| custodian |  |  | 0..1 | Reference(Organization) |  | /CD/custodian | 文書の作成・修正を行い、文書の管理責任を持つ機関（Organizationリソース）への参照。 |
|  | reference |  | 0..1 | string | "urn:uuid:6cd03543-6a5b-4396-ab12-cd3b78171e0c" |  | custodianに対応するOrganizationリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
| event |  |  | 0..* | BackboneElement |  | /CD/documentationOf | 心電図レポートの元になった心電図検査の実施情報 |
|  | code |  | 0..* | CodeableConcept |  | /CD/documentationOf/serviceEvent/code |  |
|  | period |  | 0..1 | Period |  | /CD/documentationOf/serviceEvent/<BR>effectiveTime | 心電図検査の実施期間 |
|  |  | start | 0..1 |  | "2023-12-05T13:49:04+09:00" | /CD/documentationOf/serviceEvent/<BR>effectiveTime/@low | 心電図検査の開始日時。値は例示。 |
|  |  | end | 0..1 |  | "2023-12-05T13:49:04+09:00" | /CD/documentationOf/serviceEvent/<BR>effectiveTime/@high | 心電図検査の終了日時。値は例示。 |
|  | detail |  | 1..1 | Reference(Procedure) |  | /CD/documentationOf/serviceEvent/<BR>performer | 検査実施情報を表すProcedureリソースへの参照。 |
|  |  | reference | 0..1 | string | "urn:uuid:fa0c6541-aec6-483f-9b6d-175b5e838bf4" |  | event.detailに対応するProcedureリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
| section |  |  | 0..1 | Reference(Observation) | 患者付帯情報セクション |  | 対象患者の検査時の年齢をObservationリソースを使用して記述する。 |
| section |  |  | 0..1 | Reference(Observation) | バイタルサインセクション |  | 身長、体重、収縮期血圧、拡張期血圧の値をObservationリソースを使用して記述する。 |
| section |  |  | 0..* | － | 検査項目セクション |  | 生理機能検査において実施される検査項目を記述する。JLAC、JJ1017、LOINCのいずれかを使用する。 |
| section |  |  | 0..1 | － | 既往歴セクション |  | 過去の病歴、プロブレム、診断の経歴、現疾患あるいは治療を探るために直接可能性のあることの詳細を記述する。 |
| section |  |  | 0..1 | － | 自覚症状セクション |  | 患者本人が知覚する症状（痛み・吐き気・倦怠感など）の記述に使用する。 |
| section |  |  | 0..1 | － | 検査時使用薬セクション |  | 検査時に患者に投薬された薬剤情報を記述するのに使用する。 |
| section |  |  | 0..1 | － | 検査記述セクション |  | 検査結果に対し、「負荷後 00’43”」や所見ではないコメントなどの補足情報を付加するために使用する。 |
| section |  |  | 0..1 | － | 心電図コメントセクション |  | 心電図検査時のコメント情報を記述するのに使用する。検査所見と異なり、検査に補足したいコメントを記述する。 |
| section |  |  | 0..1 | Reference(Observation) | 計測値セクション |  | 検査時に計測した情報や解析結果などをObservationリソースを使用して記述する。 |
| section |  |  | 0..1 | Reference(Observation) | 解析結果セクション |  | 計測値や解析により得られた数値類ではなく自動解析コードなどのデータ分析結果の分類コードをObservationリソースを使用して記述する。 |
| section |  |  | 0..1 | － | 検査所見セクション |  | 心電図検査における検査所見を記述するのに使用する。 |
| section |  |  | 0..1 | － | 医師所見セクション |  | 医師所見を記述するのに使用する。各検査データの判読結果として記述を想定している。 |
| section |  |  | 0..1 | Reference(DocumentReference \| Binary) | 外部参照セクション |  | 心電図レポートに付加される検査データ（波形、画像、結果PDFなど）、レポート（HTML形式など）、添付ファイル（シェーマや描画ファイル）への外部参照情報を記述する。画像データについてはBinaryリソースを使用して記述し、それ以外の文書データについてはDocumentResourceリソースを使用して記述する。 |
