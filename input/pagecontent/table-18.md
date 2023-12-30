### 表18 外部参照Binaryリソースの仕様

| 要素Lv1 | 要素Lv2 | 多重度 | 型 | 値 | 生理検査レポートCDAとのマッピング<BR>(CD=ClinicalDocument) | 説明 |
|---|---|---|---|---|---|---|
| resourceType |  |  |  | "Binary" | /CD/component/structuredBody/component/section/<BR>entry/observation/reference/externalDocument | Binaryリソースであることを示す。 |
| meta |  | 1..1 | Meta |  |  |  |
|  | lastUpdated | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile | 1..1 | canonical(StructureDefinition) | "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/<BR>JP_Binary_SEAMAT" |  | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
| contentType |  | 1..1 | code | "image/jpeg" | /CD/component/structuredBody/component/section/<BR>entry/observation/reference/externalDocument/text/<BR>@mediaType | バイナリデータのMIMEタイプ。値は例示 |
| data |  | 0..1 | base64Binary | "JVBERi0xLjcKCjQgMCBvYmoKKElkZW50aXR5KQplb..." | /CD/component/structuredBody/component/section/<BR>entry/observationMedia/value/@representation | 実際のデータ。値は例示。 |
