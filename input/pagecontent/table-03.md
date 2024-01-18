### 表3 Patientリソースの仕様

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 生理検査レポートCDAとのマッピング<BR>(CD=ClinicalDocument) | 説明 |
|---|---|---|---|---|---|---|---|
| resourceType |  |  |  |  | "Patient" | /CD/recordTarget | Patientリソースであることを示す。 |
| meta |  |  | 1..1 | Meta |  |  |  |
|  | lastUpdated |  | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile |  | 1..1 | canonical(StructureDefinition) | "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/<BR>JP_Patient_SEAMAT" |  | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
| identifier |  |  | 0..1 | Identifier |  | /CD/recordTarget/patientRole/id | 医療機関における患者番号。 |
|  | system |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/resourceInsta<BR>nce-identifier" | /CD/recordTarget/patientRole/id/@root | 医療機関における患者IDに対する名前空間識別子。固定値。 |
|  | value |  | 1..1 | string | "1234567890" | /CD/recordTarget/patientRole/id/<BR>@extension | 患者番号の文字列。値は例示。 |
| active |  |  | 1..1 | boolean | true |  | 患者レコードがアクティブかどうか。固定値。 |
| name |  |  | 0..1 | HumanName |  | /CD/recordTarget/patientRole/patient/name | 患者氏名　漢字表記 |
|  | extension |  | 1..* |  |  |  | 氏名が漢字表記かカナ表記かを区別するための拡張「iso21090-EN-representation」。 |
|  |  | url | 1..1 | uri | "http:// hl7.org/fhir/StructureDefinition/iso21090<BR>-EN-representation" |  | 拡張を識別するURL。固定値。 |
|  |  | valueCode | 1..1 | code | "IDE" | /CD/recordTarget/patientRole/patient/<BR>name@use | 漢字表記であることを示す固定値。 |
|  | use |  | 1..1 | code | "official" |  | 氏名が正式名称であることを明示するために、NameUseバリューセット（http:// hl7.org/fhir/ValueSet/name-use）より「official」を必須で設定する。 |
|  | text |  | 1..1 | string | "東京 太郎" | /CD/recordTarget/patientRole/patient/name/<BR>text() | 氏名全体の文字列をtext要素に入れる。氏名の姓と名が分離できない場合は本要素のみを使用する。姓と名の間には原則として半角空白を1個挿入する。値は例示。 |
|  | family |  | 0..1 | string | "東京" | /CD/recordTarget/patientRole/patient/name/<BR>family | 氏名の姓。値は例示。 |
|  | given |  | 0..* | string | "太郎" | /CD/recordTarget/patientRole/patient/name/<BR>given | 氏名の名。ミドルネームがある場合には、ミドルネーム、名の順で原則として半角空白をいれて連結する文字列とする。値は例示。 |
| name |  |  | 0..1 | HumanName |  | /CD/recordTarget/patientRole/patient/name | よみ（カタカナ） |
|  | extension |  | 1..* |  |  |  | 氏名が漢字表記かカナ表記かを区別するための拡張「iso21090-EN-representation」。 |
|  |  | url | 1..1 | uri | "http://hl7.org/fhir/StructureDefinition/iso21090-<BR>EN-representation" |  | 拡張を識別するURL。固定値。 |
|  |  | valueCode | 1..1 | code | "SYL" | /CD/recordTarget/patientRole/patient/<BR>name@use | カナ表記であることを示す固定値。 |
|  | use |  | 1..1 | code | "official" |  | 氏名が正式名称であることを明示するために、NameUseバリューセット（http:// hl7.org/fhir/ValueSet/name-use）より「official」を必須で設定する。 |
|  | text |  | 1..1 | string | "トウキョウ タロウ" | /CD/recordTarget/patientRole/patient/name/<BR>text() | カナ氏名全体の文字列をtext要素に入れる。氏名の姓と名が分離できない場合は本要素のみを使用する。カタカナはJIS X 0208のカタカナ（全角カナ）みとし、JIS X 0201のカタカナ（半角カナ）は使用してはならない。姓と名の間には原則として半角空白を1個挿入する。値は例示。 |
|  | family |  | 0..1 | string | "トウキョウ" | /CD/recordTarget/patientRole/patient/name/<BR>family | カナ氏名の姓。値は例示。 |
|  | given |  | 0..* | string | "タロウ" | /CD/recordTarget/patientRole/patient/name/<BR>given | カナ氏名の名。ミミドルネームがある場合には、ミドルネーム、名の順で原則として半角空白をいれて連結する文字列とする。値は例示。 |
| telecom |  |  | 0..1 | ContactPoint |  | /CD/recordTarget/patientRole/telecom | 患者連絡先電話番号。 |
|  | system |  | 1..1 | code | "phone" | /CD/recordTarget/patientRole/telecom/<BR>@value<BR>"tel:xxxxx" → "phone"<BR>"fax:xxxxxx" → "fax" | 連絡手段 phone \| fax \| email \| pager \| url \| sms \| other |
|  | value |  | 1..1 | string | "03-1234-5678" | /CD/recordTarget/patientRole/telecom/<BR>@value | 電話番号。値は例示。 |
|  | use |  | 1..1 | code | "home" | /CD/recordTarget/patientRole/telecom/@use | 用途　home \| work \| temp \| old \| mobile |
| gender |  |  | 0..1 | code | "male" | /CD/recordTarget/patientRole/patient/<BR>administrativeGenderCode | 患者の性別。”male”または”female”。値は例示。 |
| birthDate |  |  | 0..1 | date | "1965-04-15" | /CD/recordTarget/patientRole/patient/<BR>birthTime | 患者の生年月日。ISO8601に準拠して”yyyy-mm-dd”形式。値は例示。 |
| address |  |  | 0..1 | Address |  | /CD/recordTarget/patientRole/addr | 患者の住所。 |
|  | use |  | 1..1 | code | "home" | /CD/recordTarget/patientRole/addr/@use | 用途　home \| work \| temp \| old \| \billing |
|  | text |  | 0..1 | string | "東京都江戸川区南葛西１－２－３" | /CD/recordTarget/patientRole/addr/text() | 住所文字列。値は例示。郵便番号は含めない。 |
|  | line |  | 0..1 | string | "南葛西１－２－３" | /CD/recordTarget/patientRole/addr/<BR>streetAddressLine | 番地・通り名他。丁目、番地、通り名、マンション名、部屋番号、そのほか住所を構成するcityまでの部分以外のすべての文字列。値は例示。 |
|  | city |  | 0..1 | string | "江戸川区" | /CD/recordTarget/patientRole/addr/city | 市町村郡名、区名、大字名など。丁目や番地などを除く。値は例示。 |
|  | state |  | 0..1 | string | "東京都" | /CD/recordTarget/patientRole/addr/state | 都道府県名で、都道府県の文字を含む。例：東京都　など（「東京」ではなく）。値は例示。 |
|  | postalCode |  | 0..1 | string | "134-0085" | /CD/recordTarget/patientRole/addr/<BR>postalCode | 郵便番号。値は例示。 |
|  | country |  | 0..1 | string | "JP" | /CD/recordTarget/patientRole/addr/country | 居住地が国内の場合「JP」固定。 |
| managingOrganization |  |  | 0..1 | Reference(Organization) |  | /CD/recordTarget/patientRole/<BR>providerOrganization | 所属科Organizationリソースへの参照。 |
|  | reference |  | 1..1 | string | "urn:uuid:d4d71934-e535-4029-a4c8-a4d098359e4d" |  | OrganizationリソースのfullUrl要素に指定されるUUIDを指定。値は例示。 |
