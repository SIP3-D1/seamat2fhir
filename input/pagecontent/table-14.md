### 表14 測定者Practitionerリソースの仕様

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 生理検査レポートCDAとのマッピング<BR>(CD=ClinicalDocument) | 説明 |
|---|---|---|---|---|---|---|---|
| resourceType |  |  |  |  | "Practitioner" | /CD/component/structuredBody/component/<BR>section/author/assignedAuthor | Practitionerリソースであることを示す。 |
| meta |  |  | 1..1 | Meta |  |  |  |
|  | lastUpdated |  | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile |  | 1..1 | canonical(StructureDefinition) | http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/J<BR>P_Practitioner_SEAMAT_Measurer |  | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
| identifier |  |  | 0..* | Identifier |  | /CD/component/structuredBody/component/<BR>section/author/assignedAuthor/id | 医療機関における職員のID。 |
|  | system |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/resourceInsta<BR>nce-identifier" |  | 職員IDに対する名前空間識別子。固定値。 |
|  | value |  | 1..1 | string | "1234678" | /CD/component/structuredBody/component/<BR>section/author/assignedAuthor/id/<BR>@extension | 職員IDの文字列。値は例示。 |
| active |  |  | 0..1 | boolean | true |  | アクティブなレコードであることを示す固定値。 |
| name |  |  | 0..1 | HumanName |  | /CD/component/structuredBody/component/<BR>section/author/assignedAuthor/<BR>assignedPerson/name | 職員名　漢字表記 |
|  | extension |  | 1..* |  |  |  | 氏名が漢字表記かカナ表記かを区別するための拡張「iso21090-EN-representation」。 |
|  |  | url | 1..1 | uri | "http://hl7.org/fhir/StructureDefinition/iso21090-<BR>EN-representation" |  | 拡張を識別するURL。固定値。 |
|  |  | valueCode | 1..1 | code | "IDE" | /CD/component/structuredBody/component/<BR>section/author/assignedAuthor/<BR>assignedPerson/name/@use | 漢字表記であることを示す固定値。 |
|  | use |  | 1..1 | code | "official" |  | 氏名が正式名称であることを明示するために、NameUseバリューセット（http:// hl7.org/fhir/ValueSet/name-use）より「official」を必須で設定する。 |
|  | text |  | 1..1 | string | "職員 太郎" | /CD/component/structuredBody/component/<BR>section/author/assignedAuthor/<BR>assignedPerson/name/text() | 氏名全体の文字列をtext要素に入れる。氏名の姓と名が分離できない場合は本要素のみを使用する。姓と名の間には原則として半角空白を1個挿入する。値は例示。 |
|  | family |  | 0..1 | string | "職員" | /CD/component/structuredBody/component/<BR>section/author/assignedAuthor/<BR>assignedPerson/name/family | 氏名の姓。値は例示。 |
|  | given |  | 0..* | string | "太郎" | /CD/component/structuredBody/component/<BR>section/author/assignedAuthor/<BR>assignedPerson/name/given | 氏名の名。ミドルネームがある場合には、ミドルネーム、名の順で原則として半角空白をいれて連結する文字列とする。値は例示。 |
| name |  |  | 0..1 | HumanName |  | /CD/component/structuredBody/component/<BR>section/author/assignedAuthor/<BR>assignedPerson/name | 職員名よみ（カタカナ） |
|  | extension |  | 1..* |  |  |  | 氏名が漢字表記かカナ表記かを区別するための拡張「iso21090-EN-representation」。 |
|  |  | url | 1..1 | uri | "http://hl7.org/fhir/StructureDefinition/iso21090-<BR>EN-representation" |  | 拡張を識別するURL。固定値。 |
|  |  | valueCode | 1..1 | code | "SYL" | /CD/component/structuredBody/component/<BR>section/author/assignedAuthor/<BR>assignedPerson/name/@use | カナ表記であることを示す固定値。 |
|  | use |  | 1..1 | code | "official" |  | 氏名が正式名称であることを明示するために、NameUseバリューセット（http:// hl7.org/fhir/ValueSet/name-use）より「official」を必須で設定する。 |
|  | text |  | 1..1 | string | "ショクイン タロウ" | /CD/component/structuredBody/component/<BR>section/author/assignedAuthor/<BR>assignedPerson/name/text() | カナ氏名全体の文字列をtext要素に入れる。氏名の姓と名が分離できない場合は本要素のみを使用する。カタカナはJIS X 0208のカタカナ（全角カナ）みとし、JIS X 0201のカタカナ（半角カナ）は使用してはならない。姓と名の間には原則として半角空白を1個挿入する。値は例示。 |
|  | family |  | 0..1 | string | "ショクイン" | /CD/component/structuredBody/component/<BR>section/author/assignedAuthor/<BR>assignedPerson/name/family | カナ氏名の姓。値は例示。 |
|  | given |  | 0..* | string | "タロウ" | /CD/component/structuredBody/component/<BR>section/author/assignedAuthor/<BR>assignedPerson/name/given | カナ氏名の名。ミミドルネームがある場合には、ミドルネーム、名の順で原則として半角空白をいれて連結する文字列とする。値は例示。 |
| telecom |  |  | 0..* | ContactPoint |  | /CD/component/structuredBody/component/<BR>section/author/assignedAuthor/telecom | 職員の連絡先。 |
|  | system |  | 1..1 | code | "phone" | /CD/component/structuredBody/component/<BR>section/author/assignedAuthor/telecom/<BR>@value<BR>"tel:xxxxx" → "phone"<BR>"fax:xxxxxx" → "fax" | 連絡手段 phone \| fax \| email \| pager \| url \| sms \| other。値は例示。 |
|  | value |  | 1..1 | string | "03-1234-5678" | /CD/component/structuredBody/component/<BR>section/author/assignedAuthor/telecom/<BR>@value | 電話番号。値は例示。 |
|  | use |  | 1..1 | code | "home" | /CD/component/structuredBody/component/<BR>section/author/assignedAuthor/telecom/<BR>@use | 用途　home \| work \| temp \| old \| mobile。値は例示。 |
| address |  |  | 0..* | Address |  | /CD/component/structuredBody/component/<BR>section/author/assignedAuthor/addr | 職員の住所。 |
|  | use |  | 1..1 | code | "home" | /CD/component/structuredBody/component/<BR>section/author/assignedAuthor/addr/@use | 用途　home \| work \| temp \| old \| billing。値は例示。 |
|  | text |  | 0..1 | string | "東京都江戸川区南葛西１－２－３" | /CD/documentationOf/serviceEvent/<BR>performer/assignedEntity/addr/text() | 住所文字列。値は例示。郵便番号は含めない。 |
|  | line |  | 0..1 | string | "南葛西１－２－３" | /CD/component/structuredBody/component/<BR>section/author/assignedAuthor/addr/addr/<BR>streetAddressLine | 番地・通り名他。丁目、番地、通り名、マンション名、部屋番号、そのほか住所を構成するcityまでの部分以外のすべての文字列。値は例示。 |
|  | city |  | 0..1 | string | "江戸川区" | /CD/component/structuredBody/component/<BR>section/author/assignedAuthor/addr/city | 市町村郡名、区名、大字名など。丁目や番地などを除く。値は例示。 |
|  | state |  | 0..1 | string | "東京都" | /CD/component/structuredBody/component/<BR>section/author/assignedAuthor/addr/state | 都道府県名で、都道府県の文字を含む。例：東京都　など（「東京」ではなく）。値は例示。 |
|  | postalCode |  | 0..1 | string | "134-0085" | /CD/docomponent/structuredBody/component/<BR>section/author/assignedAuthor/addr/<BR>postalCode | 郵便番号。値は例示。 |
|  | country |  | 0..1 | string | "JP" | /CD/component/structuredBody/component/<BR>section/author/assignedAuthor/addr/<BR>country | 居住地が国内の場合「JP」固定。 |
