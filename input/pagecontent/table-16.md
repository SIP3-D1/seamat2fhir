#### 表16 測定値／解析結果Observationリソースの仕様

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 要素Lv4 | 要素Lv5 | 多重度 | 型 | 値 | 生理検査レポートCDAとのマッピング<BR>(CD=ClinicalDocument) | 説明 |
|---|---|---|---|---|---|---|---|---|---|
| resourceType |  |  |  |  |  |  | "Observation" | /CD/component/structuredBody/component/<BR>section/entry/observation | Observationリソースであることを示す。 |
| meta |  |  |  |  | 1..1 | Meta |  |  |  |
|  | lastUpdated |  |  |  | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile |  |  |  | 1..1 |  | "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/<BR>JP_Observation_SEAMAT" |  | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
| identifier |  |  |  |  | 1..1 | Identifier |  |  | このリソースのID。 |
|  | system |  |  |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/resourceInsta<BR>nce-identifier" |  | リソースIDに対する名前空間識別子。固定値。 |
|  | value |  |  |  | 1..1 | string | "1234567890_20231205_LJCS-100D_20231205101112.94.1<BR>4239.1002_20231205112233_100_1.1" |  | リソースIDの文字列。値は例示。 |
| identifier |  |  |  |  | 1..1 | Identifier |  |  | この文書の文書ID。 |
|  | system |  |  |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/documentInsta<BR>nce-identifier" |  | 文書IDに対する名前空間識別子。固定値。 |
|  | value |  |  |  | 1..1 | string | "1234567890_20231205_LJCS-100D_20231205101112.94.1<BR>4239.1002_20231205112233_100_1" |  | 文書IDの文字列。値は例示。 |
| status |  |  |  |  | 1..1 | code | "final" |  | 検査・観察のステータス。固定値。 |
| category |  |  |  |  | 0..* | CodeableConcept |  |  |  |
| code |  |  |  |  | 1..1 | CodeableConcept |  | /CD/component/structuredBody/component/<BR>section/entry/observation/code | 検査・観察の項目コード。 |
|  | coding |  |  |  | 1..1 | Coding |  |  |  |
|  |  | system |  |  | 1..1 | uri | "http://loinc.org" |  |  |
|  |  | code |  |  | 1..1 | code | "30525-0" |  |  |
|  |  | display |  |  | 0..1 | string | "年齢" |  |  |
| subject |  |  |  |  | 0..1 | Reference(Patient) |  |  |  |
|  | reference |  |  |  | 1..1 | string | "urn:uuid:77fbc1a7-8e7e-494c-9763-6545a73afcc4" |  | PatientリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
| value[x] |  |  |  |  | 0..1 |  |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value | 検査結果や観察結果。11通りのいずれかの子要素のひとつを選択して、それにより記述する。複数を選択はできない。value要素は記述しないで、直接valueQuantity要素などのレベルを記述する。 |
|  | valueQuantity |  |  |  |  | Quantity |  |  | @xsi:type="PQ"の場合 |
|  |  | value |  |  | 1..1 | decimal | 86.0 | /CD/component/structuredBody/component/<BR>section/entry/observation/value/@value | 値は例示。 |
|  |  | unit |  |  | 0..1 | string | "a" | /CD/component/structuredBody/component/<BR>section/entry/observation/value/@unit | 値は例示。 |
|  | valueCodeableConcept |  |  |  |  | CodeableConcept |  |  | @xsi:type="CE"の場合 |
|  |  | coding |  |  | 1..1 | Coding |  |  |  |
|  |  |  | system |  | 1..1 | uri |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/<BR>@codeSystem |  |
|  |  |  | code |  | 1..1 | code | "LA22649-0" | /CD/component/structuredBody/component/<BR>section/entry/observation/value/@code | 値は例示。 |
|  |  |  | display |  | 0..1 | string | "Rest" | /CD/component/structuredBody/component/<BR>section/entry/observation/value/<BR>@displayName | 値は例示。 |
|  | valueString |  |  |  |  | string |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/text() | @xsi:type="ST"の場合 |
|  | valueRange |  |  |  |  | Range |  |  | @xsi:type="IVL_PQ"の場合 |
|  |  | low |  |  | 0..1 | Quantity |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/low |  |
|  |  |  | value |  | 1..1 | decimal |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/low/<BR>@value |  |
|  |  |  | unit |  | 0..1 | string |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/low/@unit |  |
|  |  | high |  |  | 0..1 | Quantity |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/high |  |
|  |  |  | value |  | 1..1 | decimal |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/high/<BR>@value |  |
|  |  |  | unit |  | 0..1 | string |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/high/<BR>@unit |  |
|  | valueRatio |  |  |  |  | Ratio |  |  | @xsi:type="RTO_PQ_PQ"の場合 |
|  |  | numerator |  |  | 0..1 | Quantity |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/numerator |  |
|  |  |  | value |  | 1..1 | decimal | 93 | /CD/component/structuredBody/component/<BR>section/entry/observation/value/numerator/<BR>@value | 値は例示。 |
|  |  |  | unit |  | 0..1 | string |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/numerator/<BR>@unit |  |
|  |  | denominator |  |  | 0..1 | Quantity |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/<BR>denominator |  |
|  |  |  | value |  | 1..1 | decimal | 1.0 | /CD/component/structuredBody/component/<BR>section/entry/observation/value/<BR>denominator/@value | 値は例示。 |
|  |  |  | unit |  | 0..1 | string | "bpm" | /CD/component/structuredBody/component/<BR>section/entry/observation/value/<BR>denominator/@unit | 値は例示。 |
| dataAbsentReason |  |  |  |  | 0..1 | CodeableConcept |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/<BR>@nullFlavor | 検査結果値が欠落している理由。 |
| component |  |  |  |  | 0..* | BackboneElement |  |  | 同じ検査・観察において、メソッドが1つ、観察が1つ、実行者が1つ、デバイスが1つ、時間が1つしかない１回の検査・観察で同時に複数の検査結果が得られる場合に、その各検査をcomponentをみなして、このObservationリソースのcomponent要素に記述する。たとえばこのObservationリソースが血圧である場合に、収縮期血圧値と拡張期血圧値の2つは、Observationリソース：血圧の2つのcomponentとして記述される。 |
|  | code |  |  |  | 1..1 | CodeableConcept |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/<BR>entryRelationship/observation/code | Observation.codeと同じ。 |
|  | value[x] |  |  |  | 0..1 |  |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/<BR>entryRelationship/observation/value | Observation.value[x]と同じ。 |
|  |  | valueQuantity |  |  |  | Quantity |  |  | @xsi:type="PQ"の場合 |
|  |  |  | value |  | 1..1 | decimal |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/<BR>entryRelationship/observation/value@value |  |
|  |  |  | unit |  | 0..1 | string |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/<BR>entryRelationship/observation/value@unit |  |
|  |  | valueCodeableConcept |  |  |  | CodeableConcept |  |  | @xsi:type="CE"の場合 |
|  |  |  | coding |  | 1..1 | Coding |  |  |  |
|  |  |  |  | system | 1..1 | uri |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/<BR>entryRelationship/observation/value/<BR>@codeSystem |  |
|  |  |  |  | code | 1..1 | code |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/<BR>entryRelationship/observation/value/@code |  |
|  |  |  |  | display | 0..1 | string |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/<BR>entryRelationship/observation/value/<BR>@displayName |  |
|  |  | valueString |  |  |  | string |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/<BR>entryRelationship/observation/value/<BR>text() | @xsi:type="ST"の場合 |
|  |  | valueRange |  |  |  | Range |  |  | @xsi:type="IVL_PQ"の場合 |
|  |  |  | low |  | 0..1 | Quantity |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/<BR>entryRelationship/observation/value/low |  |
|  |  |  |  | value | 1..1 | decimal |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/<BR>entryRelationship/observation/value/low/<BR>@value |  |
|  |  |  |  | unit | 0..1 | string |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/<BR>entryRelationship/observation/value/low/<BR>@unit |  |
|  |  |  | high |  | 0..1 | Quantity |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/<BR>entryRelationship/observation/value/high |  |
|  |  |  |  | value | 1..1 | decimal |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/<BR>entryRelationship/observation/value/high/<BR>@value |  |
|  |  |  |  | unit | 0..1 | string |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/<BR>entryRelationship/observation/value/high/<BR>@unit |  |
|  |  | valueRatio |  |  |  | Ratio |  |  | @xsi:type="RTO_PQ_PQ"の場合 |
|  |  |  | numerator |  | 0..1 | Quantity |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/<BR>entryRelationship/observation/value/<BR>numerator |  |
|  |  |  |  | value | 1..1 | decimal |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/<BR>entryRelationship/observation/value/<BR>numerator/@value |  |
|  |  |  |  | unit | 0..1 | string |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/<BR>entryRelationship/observation/value/<BR>numerator/@unit |  |
|  |  |  | denominator |  | 0..1 | Quantity |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/<BR>entryRelationship/observation/value/<BR>denominator |  |
|  |  |  |  | value | 1..1 | decimal |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/<BR>entryRelationship/observation/value/<BR>denominator/@value |  |
|  |  |  |  | unit | 0..1 | string |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/<BR>entryRelationship/observation/value/<BR>denominator/@unit |  |
|  | dataAbsentReason |  |  |  | 0..1 | CodeableConcept |  | /CD/component/structuredBody/component/<BR>section/entry/observation/value/<BR>entryRelationship/observation/value/<BR>@nullFlavor | Observation.dataAbsentReasonと同じ。 |
