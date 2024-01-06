### 表19 本仕様書で定義された名前空間、コードシステム、バリューセットと識別子の一覧


| No | 出現リソース      | 出現要素              | データ型            | 項目名     | 識別子の値                                                                                      | 説明                                        |
|----|-------------|-------------------|-----------------|---------|--------------------------------------------------------------------------------------------|-------------------------------------------|
| 1  | 共通          | identifier        | Identifier      | 名前空間    | http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier                            | 文書を識別するID                                 |
| 2  |             | identifier        | Identifier      | 名前空間    | http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier                            | リソースを識別するID                               |
| 3  | Composition | type<br/>category | CodeableConcept | コードシステム | http://jpfhir.jp/fhir/SEAMAT/CodeSystem/<br/>JP_Composition_SEAMAT_DocumentType_CS         | 文書種別を識別するコードシステム                          |
| 4  |             |                   |                 | バリューセット | http://jpfhir.jp/fhir/SEAMAT/ValueSet/<br/>JP_Composition_EKGReport_DocumentType_VS        | 心電図レポートで使用する文書種別のバリューセット                  |
| 5  |             | section.code      | CodeableConcept | コードシステム | http://jpfhir.jp/fhir/SEAMAT/CodeSystem/<br/>JP_Composition_SEAMAT_SectionCode_CS          | セクションを識別するコードシステム                         |
| 6  |             |                   |                 | バリューセット | http://jpfhir.jp/fhir/SEAMAT/ValueSet/<br/>JP_Composition_EKGReport_SectionCode_VS         | 心電図レポートで使用するセクションコードのバリューセット              |
| 7  | Procedure   | identifier        | Identifier      | 名前空間    | http://jpfhir.jp/fhir/SEAMAT/IdSystem/placer-order-no                                      | <オーダ番号> : 電子カルテが発番する、施設内でユニークなオーダ単位の値     |
| 8  |             | identifier        | Identifier      | 名前空間    | http://jpfhir.jp/fhir/SEAMAT/IdSystem/filler-order-no                                      | <部門管理番号> : 検査部門が発番する検査毎にユニークな値            |
| 9  |             | identifier        | Identifier      | 名前空間    | http://jpfhir.jp/fhir/SEAMAT/IdSystem/filler-data-no/<br/><部門管理番号>                         | <データ管理番号> : データやレポートを識別する同一部門管理番号内でユニークな値 |
| 10 |             | category          | CodeableConcept | コードシステム | http://jpfhir.jp/fhir/SEAMAT/CodeSystem/<br/>JP_ServiceRequest_Category_SEAMAT_DataType_CS | SEAMATにおいてデータ種別を識別するコードシステム               |
| 11 |             |                   |                 | バリューセット | http://jpfhir.jp/fhir/SEAMAT/ValueSet/<br/>JP_Procedure_EKGReport_Category_VS              | 心電図レポートで使用するデータ種別のバリューセット                 |
