### 表7 作成医療機関Organizationリソースの仕様

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 生理検査レポートCDAとのマッピング<BR>(CD=ClinicalDocument) | 説明 |
|---|---|---|---|---|---|---|---|
| resourceType |  |  |  | DomainResource | "Organization" | /CD/author/assignedAuthor/<BR>representedOrganization | Organizationリソースであることを示す。 |
| meta |  |  | 1..1 | Meta |  |  |  |
|  | lastUpdated |  | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile |  | 1..1 | canonical(StructureDefinition) | http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/J<BR>P_Organization_SEAMAT_Author |  | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
| identifier |  |  | 0..1 | Identifier |  | /CD/author/assignedAuthor/<BR>representedOrganization/id | この医療機関のID。 |
|  | system |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/IdSystem/resourceInsta<BR>nce-identifier" |  | 医療機関IDに対する名前空間識別子。固定値。 |
|  | value |  | 1..1 | string | "1311234567" | /CD/author/assignedAuthor/<BR>representedOrganization/id/@extension | 医療機関IDの文字列。値は例示。 |
| active |  |  | 0..1 | boolean | true |  | アクティブなレコードであることを示す固定値。 |
| type |  |  | 0..* | CodeableConcept |  |  | 施設種別 |
|  | coding |  | 1..1 | Coding |  |  |  |
|  |  | system | 1..1 | uri | "http://terminology.hl7.org/CodeSystem/organizatio<BR>n-type" |  | 施設種別を表すコード体系を識別するURI。固定値。 |
|  |  | code | 1..1 | code | "prov" |  | バリューセットOrganizationType(http://hl7.org/fhir/ValueSet/organization-type) から、医療機関を表すコードを指定。固定値。 |
|  |  | display | 1..1 | string | "Healthcare Provider" |  | 医療機関を表す名称を指定。固定値。 |
| name |  |  | 0..1 | string | "ABC総合病院" | /CD/author/assignedAuthor/<BR>representedOrganization/name | 医療機関の名称。値は例示。 |
| telecom |  |  | 0..* | ContactPoint |  | /CD/author/assignedAuthor/<BR>representedOrganization/telecom | 医療機関の連絡先。 |
|  | system |  | 1..1 | code | "phone" | /CD/author/assignedAuthor/<BR>representedOrganization/telecom/@value<BR>"tel:xxxxx" → "phone"<BR>"fax:xxxxxx" → "fax" | 連絡手段 phone \| fax \| email \| pager \| url \| sms \| other。値は例示。 |
|  | value |  | 1..1 | string | "03-1234-5678" | /CD/author/assignedAuthor/<BR>representedOrganization/telecom/@value | 電話番号。値は例示。 |
|  | use |  | 1..1 | code | "home" | /CD/author/assignedAuthor/<BR>representedOrganization/telecom/@use | 用途　home \| work \| temp \| old \| mobile。値は例示。 |
| address |  |  | 0..* | Address |  | /CD/author/assignedAuthor/<BR>representedOrganization/addr | 医療機関の住所。 |
|  | use |  | 1..1 | code | "home" | /CD/author/assignedAuthor/<BR>representedOrganization/addr/@use | 用途　home \| work \| temp \| old \| billing |
|  | text |  | 0..1 | string | "東京都江戸川区南葛西１－２－３" | /CD/author/assignedAuthor/<BR>representedOrganization/addr/text() | 住所文字列。値は例示。郵便番号は含めない。 |
|  | line |  | 0..1 | string | "南葛西１－２－３" | /CD/author/assignedAuthor/<BR>representedOrganization/addr/<BR>streetAddressLine | 番地・通り名他。丁目、番地、通り名、マンション名、部屋番号、そのほか住所を構成するcityまでの部分以外のすべての文字列。値は例示。 |
|  | city |  | 0..1 | string | "江戸川区" | /CD/author/assignedAuthor/<BR>representedOrganization/addr/city | 市町村郡名、区名、大字名など。丁目や番地などを除く。値は例示。 |
|  | state |  | 0..1 | string | "東京都" | /CD/author/assignedAuthor/<BR>representedOrganization/addr/state | 都道府県名で、都道府県の文字を含む。例：東京都　など（「東京」ではなく）。値は例示。 |
|  | postalCode |  | 0..1 | string | "134-0085" | /CD/author/assignedAuthor/<BR>representedOrganization/addr/postalCode | 郵便番号。値は例示。 |
|  | country |  | 0..1 | string | "JP" | /CD/author/assignedAuthor/<BR>representedOrganization/addr/country | 居住地が国内の場合「JP」固定。 |
| partOf |  |  | 0..1 | Reference(Organization) |  | /CD/author/assignedAuthor/<BR>representedOrganization/<BR>asOrganizationPartOf/id |  |
|  | identifier |  | 1..1 | Identifier |  |  |  |
|  |  | value | 1..1 | string | "0311234567" | /CD/author/assignedAuthor/<BR>representedOrganization/<BR>asOrganizationPartOf/id/@extension | 親組織の医療機関ID。値は例示。 |
