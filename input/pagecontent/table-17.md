### 表17 外部参照DocumentReferenceリソースの仕様

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 生理検査レポートCDAとのマッピング<BR>(CD=ClinicalDocument) | 説明 |
|---|---|---|---|---|---|---|---|
| resourceType |  |  |  |  | "DocumentReference" | /CD/component/structuredBody/component/section/<BR>entry/observation | DocumentReferenceリソースであることを示す。 |
| meta |  |  | 1..1 | Meta |  |  |  |
|  | lastUpdated |  | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile |  | 1..1 | canonical(StructureDefinition) | "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/<BR>JP_DocumentReference_SEAMAT" |  | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
| status |  |  | 1..1 | code | "current" |  | 本リソースのステータス。固定値。 |
| docStatus |  |  | 0..1 | code | "final" |  | 対象のドキュメントのステータス。固定値。 |
| type |  |  | 0..1 | CodeableConcept |  | /CD/component/structuredBody/component/section/<BR>entry/observation/code | ドキュメントの区分コード。 |
|  | coding |  | 1..1 | Coding |  |  |  |
|  |  | system | 1..1 | uri | "urn:oid:1.2.392.200119.4.1005" | /CD/component/structuredBody/component/section/<BR>entry/observation/code/@codeSystem | 文書区分コードのコード体系を識別するUR（LOINCコードベース）。値は例示。 |
|  |  | code | 1..1 | code | "9A110" | /CD/component/structuredBody/component/section/<BR>entry/observation/code/@code | 文書区分コード。値は例示。 |
|  |  | display | 0..1 | string | "標準12誘導心電図" | /CD/component/structuredBody/component/section/<BR>entry/observation/code/@displayName | 文書区分コードの表示名。値は例示。 |
| subject |  |  | 1..1 | Reference(Patient) |  |  | 患者情報を表すPatientリソースへの参照。 |
|  | reference |  | 1..1 | string | "urn:uuid:77fbc1a7-8e7e-494c-9763-6545a73afcc4" |  | PatientリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
| content |  |  | 1..* | BackboneElement |  |  | 参照されるドキュメントとフォーマット。 |
|  | attachment |  | 1..1 | Attachment |  |  | ドキュメントまたはドキュメントの URL と、コンテンツの整合性を証明する重要なメタデータ。 |
|  |  | contentType | 0..1 | code | "application/pdf" | /CD/component/structuredBody/component/section/<BR>entry/observation/reference/externalDocument/text/<BR>@mediaType | コンテンツのMIMEタイプ。値は例示。 |
|  |  | data | 0..1 | base64Binary | "JVBERi0xLjcKCjQgMCBvYmoKKElkZW50aXR5KQplb..." | /CD/<リンク先の外部データ本体> | 内包されたデータ。値は例示。 |
|  |  | url | 0..1 | url | "99999999134904_PDF\99999999134904.PDF" | /CD/component/structuredBody/component/section/<BR>entry/observation/reference/externalDocument/<BR>reference/@value | データの格納先のURL。 |
|  |  | hash | 0..1 | base64Binary | "dEZg98P5t76fcYjcVa9JK3Fo0jg=" | /CD/component/structuredBody/component/section/<BR>entry/observation/reference/externalDocument/text/<BR>@integrityCheck | データのSHA-1ハッシュ値。値は例示。 |
|  | format |  | 0..1 | Coding |  | /CD/component/structuredBody/component/section/<BR>entry/observation/reference/externalDocument/code | ドキュメントのフォーマット。 |
|  |  | system | 1..1 | uri |  | /CD/component/structuredBody/component/section/<BR>entry/observation/reference/externalDocument/code/<BR>@codeSystem |  |
|  |  | code | 1..1 | code |  | /CD/component/structuredBody/component/section/<BR>entry/observation/reference/externalDocument/code/<BR>@code |  |
|  |  | display | 0..1 | string |  | /CD/component/structuredBody/component/section/<BR>entry/observation/reference/externalDocument/code/<BR>@displayName |  |
