### 表4 所属科Organizationリソースの仕様

| 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 生理検査レポートCDAとのマッピング<BR>(CD=ClinicalDocument) | 説明 |
|---|---|---|---|---|---|---|---|
| resourceType |  |  |  |  | "Organization" | /CD/recordTarget/patientRole/<BR>providerOrganization | Organizationリソースであることを示す。 |
| meta |  |  | 1..1 | Meta |  |  |  |
|  | lastUpdated |  | 1..1 | instant | "2023-12-25T20:21:32+09:00" |  | 最終更新日時。YYYY-MM-DDThh:mm:ss.sss+zz:zz。値は例示。 |
|  | profile |  | 1..1 | canonical(StructureDefinition) | "http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/<BR>JP_Organization_SEAMAT_Department" |  | 本リソースのプロファイルを識別するURLを指定する。値は固定。 |
| active |  |  | 0..1 | boolean | true |  | アクティブなレコードであることを示す固定値。 |
| type |  |  | 1..1 | CodeableConcept |  |  | 施設種別 |
|  | coding |  | 1..1 | Coding |  |  |  |
|  |  | system | 1..1 | uri | "http://terminology.hl7.org/CodeSystem/organizatio<BR>n-type" |  | 施設種別を表すコード体系を識別するURI。固定値。 |
|  |  | code | 1..1 | code | "dept" |  | バリューセットOrganizationType(http://hl7.org/fhir/ValueSet/organization-type) から、診療科を表すコードを指定。固定値。 |
|  |  | display | 1..1 | string | "Hospital Department" |  | 診療科を表す名称を指定。固定値。 |
| name |  |  | 0..1 | string | "内科" | /CD/recordTarget/patientRole/<BR>providerOrganization/name | 診療科名称。値は例示。 |

