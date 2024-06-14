### 表20 Compositionリソースの仕様（心臓カテーテル検査レポート）

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 心カテレポートCDAとのマッピング<BR>(CD=ClinicalDocument) | 説明 |
|---|---|---|---|---|---|---|---|
| resourceType |  |  |  |  | "Composition" |  | Compositionリソースであることを示す |
| meta |  |  | 1..1 | Meta |  |  |  |
|  | lastUpdated |  | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile |  | 1..1 | canonical(StructureDefinition) | "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/<BR>JP_Composition_CATHReport" | /CD/templateId | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
| extension |  |  | 0..1 | Extension |  |  | 文書バージョンを表す拡張「composition-clinicaldocument-versionNumber」。 |
|  | url |  | 1..1 | uri | "http://hl7.org/fhir/StructureDefinition/compositi<BR>on-clinicaldocument-versionNumber" |  | 拡張を識別するURL。固定値。 |
|  | valueString |  | 1..1 | string | “1” | /CD/versionNumber | 文書のバージョン番号を表す文字列。値は例示。 |
| extension |  |  | 0..1 | Extension |  |  | オーダーのServiceRequestリソースを参照する拡張「order-extension」。定義のみで現バージョンでは未使用。 |
|  | url |  | 1..1 | uri | "http://hl7.org/fhir/us/ccda/StructureDefinition/O<BR>rderExtension" |  | 拡張を識別するURL。固定値。 |
|  | valueReference |  | 1..1 | Reference | http://hl7.org/fhir/us/ccda/StructureDefinition/Or<BR>derExtension" |  | 拡張を識別するURL。固定値。 |
|  |  | reference | 1..1 | uri | "urn:uuid:4b0210b8-9866-4509-9bd9-044120ff2349" |  | オーダーのServiceRequestリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
| language |  |  | 0..1 | code | "ja" | /CD/languageCode | この文書の記述言語。値は例示。 |
| identifier |  |  | 0..1 | Identifier |  | /CD/id | この文書の文書ID。 |
|  | system |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/documentInsta<BR>nce-identifier" | /CD/id/@root | 文書IDの名前空間を表すURI。固定値。 |
|  | value |  | 1..1 | string | "1234567890_20231205_LJCS-300R_20231205101112.94.1<BR>4239.1002_20231205112233_200_1" | /CD/id/@extension | 文書ID。値は例示。 |
| status |  |  | 1..1 | code | "final" |  | この文書のステータス。最終版が登録される段階では、”final” でなければならない。 |
| type |  |  | 1..1 | CodeableConcept |  | /CD/code | 文書区分コード |
|  | coding |  | 1..1 | Coding |  |  |  |
|  |  | system | 1..1 | uri | "http://jpfhir.jp/fhir/SEAMAT/CodeSystem/JP_Compos<BR>ition_SEAMAT_DocumentType_CS" | /CD/code/@codeSystem | 文書区分コードのコード体系を識別するUR（LOINCコードベース）。固定値 |
|  |  | code | 1..1 | code | "18745-0" | /CD/code/@code | 文書区分コード。固定値 |
|  |  | display | 0..1 | string | "Cardiac catheterization study" | /CD/code/@displayName | 文書区分コードの表示名。 |
| category |  |  | 1..* | CodeableConcept |  | /CD/code | 文書クラス（カテゴリー） |
|  | coding |  | 1..1 |  |  |  |  |
|  |  | system | 1..1 | uri | "http://jpfhir.jp/fhir/SEAMAT/CodeSystem/JP_Compos<BR>ition_SEAMAT_DocumentType_CS" | /CD/code/@codeSystem | 文書クラスのコード体系を識別するURI。固定値。 |
|  |  | code | 1..1 | code | "18745-0" | /CD/code/@code | 文書カテゴリコード。固定値 |
|  |  | display | 0..1 | string | "Cardiac catheterization study" | /CD/code/@displayName | コードの表示名 |
| subject |  |  | 1..1 | Reference(Patient) |  | /CD/recordTraget | 患者情報を表すPatientリソースへの参照。 |
|  | reference |  | 1..1 | string | "urn:uuid:77fbc1a7-8e7e-494c-9763-6545a73afcc4" |  | PatientリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
| date |  |  | 1..1 | dateTime | "2019-03-26T00:43:30+09:00" | /CD/effectiveTime<BR>author/time | このリソースを作成または最後に編集した日時。ISO8601に準拠し、秒の精度まで記録し、タイムゾーンも付記する。午前0時を”24:00”と記録することはできないため”00:00”と記録すること。値は例示。 |
| author |  |  | 1..2 | Reference(Practitioner\|Device\| Organization) |  | /CD/author | 文書作成責任者を表すPractitionerリソースないし作成システムを表すDeviceリソースへの参照、および文書作成機関を表すOrganizationリソースへの参照の2つのReferenceを繰り返す。 |
|  | reference |  | 0..1 | string | "urn:uuid:4b0210b8-9866-4509-9bd9-044120ff2349" |  | 作成者PractitionerリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
|  | reference |  | 0..1 | string | "urn:uuid:a78efb38-13d1-448a-ad68-5e28dfbdc306" |  | 作成システムDevicerリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
|  | reference |  | 0..1 | string | "urn:uuid:6cd03543-6a5b-4396-ab12-cd3b78171e0c" |  | 医療機関OrganizationリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
| title |  |  | 1..1 | string | "心臓カテーテル検査レポート" | /CD/title | この文書の（人が読める）タイトル。固定値。 |
| confidentiality |  |  | 0..1 | code |  | /CD/confidentialityCode | 機密性を表すコード |
| attester |  |  | 0..* | BackboneElement |  | /CD/authenticator |  |
|  | mode |  | 1..1 | code | "official" |  | 文書内容の承認のタイプ。固定値。 |
|  | time |  | 0..1 | dateTime |  | /CD/authenticator/time | 文書内容を承認した日時。 |
|  | party |  | 0..1 | Reference(Practitioner) |  | /CD/authenticator/assignedEntity | 文書内容責任者Practitionerリソースへの参照。 |
|  |  | reference | 0..1 | string | "urn:uuid:e6597c74-c7e0-46ba-85fd-826eab41b01f" |  | 文書内容責任者PractitionerリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
| custodian |  |  | 0..1 | Reference(Organization) |  | /CD/custodian | 文書の作成・修正を行い、文書の管理責任を持つ機関（Organizationリソース）への参照。 |
|  | reference |  | 0..1 | string | "urn:uuid:6cd03543-6a5b-4396-ab12-cd3b78171e0c" |  | custodianに対応するOrganizationリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
| event |  |  | 0..* | BackboneElement |  | /CD/documentationOf | 心カテレポートの元になった心カテ検査の実施情報 |
|  | code |  | 0..* | CodeableConcept |  | /CD/documentationOf/serviceEvent/code |  |
|  | period |  | 0..1 | Period |  | /CD/documentationOf/serviceEvent/<BR>effectiveTime | 心カテ検査の実施期間 |
|  |  | start | 0..1 |  | "2023-12-05T13:49:04+09:00" | /CD/documentationOf/serviceEvent/<BR>effectiveTime/@low | 心カテ検査の開始日時。値は例示。 |
|  |  | end | 0..1 |  | "2023-12-05T13:49:04+09:00" | /CD/documentationOf/serviceEvent/<BR>effectiveTime/@high | 心カテ検査の終了日時。値は例示。 |
|  | detail |  | 1..1 | Reference(Procedure) |  | /CD/documentationOf/serviceEvent/<BR>performer | 検査実施情報を表すProcedureリソースへの参照。 |
|  |  | reference | 0..1 | string | "urn:uuid:fa0c6541-aec6-483f-9b6d-175b5e838bf4" |  | event.detailに対応するProcedureリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
| section |  |  | 0..1 | Reference(Observation) | 患者付帯情報セクション |  | 対象患者の検査時の年齢をObservationリソースを使用して記述する。 |
| section |  |  | 0..1 | Reference(Condition) | 併存疾患情報セクション |  | 心血管イベントに影響のある併存疾患をConditionリソースを使用して記述する。 |
| section |  |  | 0..1 | Reference(Condition) | 冠危険因子セクション |  | 冠動脈に関する危険因子をConditionリソースを使用して記述する。 |
| section |  |  | 0..1 | Reference(Condition) | 循環器疾患既往歴セクション |  | 過去の病歴、プロブレム、診断の経歴をConditionリソースを使用して記述する。 |
| section |  |  | 0..1 | Reference(Observation) | 過去の血行再建セクション |  | 患者の医療リスクに影響を与える可能性に関する患者の遺伝関係のある親族の情報をObservationリソースを使用して記述する。 |
| section |  |  | 0..1 | Reference(Observation) | 術前情報セクション |  | 24時間以内の患者の心疾患情報をObservationリソースを使用して記述する。 |
| section |  |  | 0..1 | Reference(Observation) | 検査情報セクション |  | 検査に関する情報をObservationリソースを使用して記述する。 |
| section |  |  | 0..1 | Reference(Observation) | 検査内容セクション |  | 検査内容に関する情報をObservationリソースを使用して記述する。 |
| section |  |  | 0..1 | Reference(Observation) | 補助循環治療セクション |  | 補助循環を用いた治療の有無に関する情報をObservationリソースを使用して記述する。 |
| section |  |  | 0..1 | Reference(Observation) | カテーテルセクション |  | 使用されたカテーテルに関する情報をObservationリソースを使用して記述する。 |
| section |  |  | 0..1 | Reference(Observation) | 冠動脈病変セクション |  | 冠動脈の病変に関する情報をObservationリソースを使用して記述する。 |
| section |  |  | 0..1 | Reference(Observation) | 冠動脈病変［拡張項目］セクション |  | 心カテ情報システムの拡張項目の冠動脈の病変に関する情報をObservationリソースを使用して記述する。 |
| section |  |  | 0..1 | Reference(Observation) | LVGセクション |  | LVG（左室造影検査）に関する情報をObservationリソースを使用して記述する。 |
| section |  |  | 0..1 | Reference(Observation) | 心内圧データセクション |  | 心内圧に関する情報に関する情報をObservationリソースを使用して記述する。 |
| section |  |  | 0..1 | Reference(Observation) | スパズム負荷試験セクション |  | スパズム負荷試験に関する情報をObservationリソースを使用して記述する。 |
| section |  |  | 0..1 | Reference(Condition) | PCI合併症セクション |  | PCI時に発生した合併症に関する情報をConditionリソースを使用して記述する。 |
| section |  |  | 0..* | Reference(Procedure) | PCI処置セクション |  | PCIで行った処置に関する情報をProcedureリソースを使用して記述する。本セクションは処置を行った部位の数だけ繰り返す。 |
| section |  |  | 0..* | Reference(Observation) | PCI処置［拡張項目］セクション |  | 心カテ情報システムの、PCIで行った処置に関する拡張項目情報をObservationリソースを使用して記述する。本セクションは処置を行った部位の数だけ繰り返す。 |
| section |  |  | 0..* | Reference(Observation) | PCI処置詳細［拡張項目］セクション |  | 心カテ情報システムの、PCIで行った処置の結果に関する拡張項目情報をObservationリソースを使用して記述する。本セクションは病変を持つ冠動脈のセグメントの数だけ繰り返す。 |
| section |  |  | 0..* | Reference(Observation) | PCI処置詳細ステント基本情報［拡張項目］セクション |  | 心カテ情報システムの、PCIで使用したステントに関する拡張項目情報をObservationリソースを使用して記述する。本セクションはステント通番の数だけ繰り返す。 |
