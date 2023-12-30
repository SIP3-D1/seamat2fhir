### 表8 管理医療機関Organizationリソースの仕様

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 生理検査レポートCDAとのマッピング<BR>(CD=ClinicalDocument) | 説明 |
|---|---|---|---|---|---|---|---|
| resourceType |  |  |  | DomainResource | "Organization" | /CD//ClinicalDocument/custodian | Organizationリソースであることを示す。 |
| meta |  |  | 1..1 | Meta |  |  |  |
|  | lastUpdated |  | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile |  | 1..1 | canonical(StructureDefinition) | http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/J<BR>P_Organization_SEAMAT_Custodian |  | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
| identifier |  |  | 0..1 | Identifier |  | /CD/custodian/assignedCustodian/<BR>representedCustodianOrganization/id | この医療機関のID。 |
|  | system |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/resourceInsta<BR>nce-identifier" |  | 医療機関IDに対する名前空間識別子。固定値。 |
|  | value |  | 1..1 | string | "1311234567" | /CD/custodian/assignedCustodian/<BR>representedCustodianOrganization/id/@extension | 医療機関IDの文字列。値は例示。 |
| identifier |  |  | 1..1 | Identifier |  |  | この文書の文書ID。 |
|  | system |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/documentInsta<BR>nce-identifier" |  | 文書IDに対する名前空間識別子。固定値。 |
|  | value |  | 1..1 | string | "1234567890_20231205_LJCS-100D_20231205101112.94.1<BR>4239.1002_20231205112233_100_1" |  | 文書IDの文字列。値は例示。 |
| active |  |  | 0..1 | boolean | true |  |  |
| type |  |  | 0..* | CodeableConcept |  |  | 施設種別 |
|  | coding |  | 1..1 | Coding |  |  |  |
|  |  | system | 1..1 | uri | "http://terminology.hl7.org/CodeSystem/organizatio<BR>n-type" |  | 施設種別を表すコード体系を識別するURI。固定値。 |
|  |  | code | 1..1 | code | "prov" |  | バリューセットOrganizationType(http://hl7.org/fhir/ValueSet/organization-type) から、医療機関を表すコードを指定。固定値。 |
|  |  | display | 1..1 | string | "Healthcare Provider" |  | 医療機関を表す名称を指定。固定値。 |
| name |  |  | 0..1 | string | "ABC総合病院" | /CD/custodian/assignedCustodian/<BR>representedCustodianOrganization/name | 医療機関の名称。値は例示。 |
| telecom |  |  | 0..* | ContactPoint |  | /CD/custodian/assignedCustodian/<BR>representedCustodianOrganization/telecom | 医療機関の連絡先。 |
|  | system |  | 1..1 | code | "phone" | /CD/custodian/assignedCustodian/<BR>representedCustodianOrganization/telecom/@value<BR>"tel:xxxxx" → "phone"<BR>"fax:xxxxxx" → "fax" | 連絡手段 phone \| fax \| email \| pager \| url \| sms \| other。値は例示。 |
|  | value |  | 1..1 | string | "03-1234-5678" | /CD/custodian/assignedCustodian/<BR>representedCustodianOrganization/telecom/@value | 電話番号。値は例示。 |
|  | use |  | 1..1 | code | "home" | /CD/custodian/assignedCustodian/<BR>representedCustodianOrganization/telecom/@use | 用途　home \| work \| temp \| old \| mobile。値は例示。 |
| address |  |  | 0..* | Address |  | /CD/custodian/assignedCustodian/<BR>representedCustodianOrganization/addr | 医療機関の住所。 |
|  | use |  | 1..1 | code | "home" | /CD/custodian/assignedCustodian/<BR>representedCustodianOrganization/addr/@use | 用途　home \| work \| temp \| old \| billing |
|  | text |  | 0..1 | string | "東京都江戸川区南葛西３－１－２" | /CD/custodian/assignedCustodian/<BR>representedCustodianOrganization/addr/text() | 住所文字列。値は例示。郵便番号は含めない。 |
|  | line |  | 0..1 | string | "南葛西１－２－３" | /CD/custodian/assignedCustodian/<BR>representedCustodianOrganization/addr/<BR>streetAddressLine | 番地・通り名他。丁目、番地、通り名、マンション名、部屋番号、そのほか住所を構成するcityまでの部分以外のすべての文字列。値は例示。 |
|  | city |  | 0..1 | string | "江戸川区" | /CD/custodian/assignedCustodian/<BR>representedCustodianOrganization/addr/city | 市町村郡名、区名、大字名など。丁目や番地などを除く。値は例示。 |
|  | state |  | 0..1 | string | "東京都" | /CD/custodian/assignedCustodian/<BR>representedCustodianOrganization/addr/state | 都道府県名で、都道府県の文字を含む。例：東京都　など（「東京」ではなく）。値は例示。 |
|  | postalCode |  | 0..1 | string | "134-0085" | /CD/custodian/assignedCustodian/<BR>representedCustodianOrganization/addr/postalCode | 郵便番号。値は例示。 |
|  | country |  | 0..1 | string | "JP" | /CD/custodian/assignedCustodian/<BR>representedCustodianOrganization/addr/country | 居住地が国内の場合「JP」固定。 |
