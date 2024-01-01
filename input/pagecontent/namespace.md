### 名前空間一覧

| No | 出現リソース      | 出現要素              | データ型            | 項目名     | 値                                                                                          | 説明                                        |
|----|-------------|-------------------|-----------------|---------|--------------------------------------------------------------------------------------------|-------------------------------------------|
| 1  | 共通          | identifier        | Identifier      | 名前空間識別子 | http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier                            | 文書を識別するID                                 |
| 2  |             | identifier        | Identifier      | 名前空間識別子 | http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier                            | リソースを識別するID                               |
| 3  | Composition | type<br/>category | CodeableConcept | コードシステム | http://jpfhir.jp/fhir/SEAMAT/CodeSystem/<br/>JP_Composition_SEAMAT_DocumentType_CS         | 文書種別を識別するコードシステム                          |
| 4  |             |                   |                 | 値リスト    | http://jpfhir.jp/fhir/SEAMAT/ValueSet/<br/>JP_Composition_EKGReport_DocumentType_CS        | 心電図レポートで使用する文書種別の値セット                     |
| 5  |             | section.code      | CodeableConcept | コードシステム | http://jpfhir.jp/fhir/SEAMAT/CodeSystem/<br/>JP_Composition_SEAMAT_SectionCode_CS          | セクションを識別するコードシステム                         |
| 6  |             |                   |                 | 値リスト    | http://jpfhir.jp/fhir/SEAMAT/ValueSet/<br/>JP_Composition_EKGReport_SectionCode_VS         | 心電図レポートで使用するセクションコードの値セット                 |
| 7  | Procedure   | identifier        | Identifier      | 名前空間識別子 | http://jpfhir.jp/fhir/SEAMAT/IdSystem/placer-order-no                                      | <オーダ番号> : 電子カルテが発番する、施設内でユニークなオーダ単位の値     |
| 8  |             | identifier        | Identifier      | 名前空間識別子 | http://jpfhir.jp/fhir/SEAMAT/IdSystem/filler-order-no                                      | <部門管理番号> : 検査部門が発番する検査毎にユニークな値            |
| 9  |             | identifier        | Identifier      | 名前空間識別子 | http://jpfhir.jp/fhir/SEAMAT/IdSystem/filler-data-no/<br/><部門管理番号>                         | <データ管理番号> : データやレポートを識別する同一部門管理番号内でユニークな値 |
| 10 |             | category          | CodeableConcept | コードシステム | http://jpfhir.jp/fhir/SEAMAT/CodeSystem/<br/>JP_ServiceRequest_Category_SEAMAT_DataType_CS | SEAMATにおいてデータ種別を識別するコードシステム               |
| 11 |             |                   |                 | 値リスト    | http://jpfhir.jp/fhir/SEAMAT/ValueSet/<br/>JP_Procedure_EKGReport_Category_VS              | 心電図レポートで使用するデータ種別の値セット                    |
| 12 | Observation | category          | CodeableConcept | 値リスト    | http://jpfhir.jp/fhir/SEAMAT/ValueSet/<br/>JP_Observationt_Category_SEAMAT_VS(予定)          | 生理検査を表す検査カテゴリーの値セット                       |