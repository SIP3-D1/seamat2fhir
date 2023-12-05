Invariant: bundle-ekgreport-metaprofile
Description: "meta.profileには、指定したプロファイルのURLの記述が存在しなければならない。"
Severity: #error
Expression: "meta.profile.where($this = 'http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Bundle_EKGReport').exists()"


// ==============================
//   Profile 定義
// ==============================
Profile: JP_Bundle_EKGReport
Parent: Bundle
Id: JP-Bundle-ekgreport
Title: "SEAMAT EKG Report Bundle Profile"
Description: "SEAMAT心電図検査レポートのための文書 Bundleリソース"
* ^url = $JP_Bundle_EKGReport
* ^status = #active
* ^date = "2023-11-12"
* . ^short = "SEAMAT心電図検査レポートのための文書 Bundleリソース"
* . ^definition = "SEAMAT心電図検査レポートのための文書 Bundleリソース"

* obeys bundle-ekgreport-metaprofile

* meta.lastUpdated 1.. MS
* meta.profile 1.. MS
* meta.profile = $JP_Bundle_EKGReport

* identifier 1.. MS
* identifier ^short = "この文書Bundleの固定識別番号。Bundle作成時にシステムが設定し、サーバ間で移動、コピーされても変更されないID。"
* identifier ^definition = "この文書Bundleの固定識別番号。identifierがグローバルに一意になるように生成される必要がある。\r\n
変換元のCDA文書が置かれたSS-MIX2拡張ストレージのコンテンツフォルダ名をセットする。\r\n
書式：<患者ID>_<診療日>_<データ種別>_<特定キー>_<発生日時>_<診療科コード>_<コンディションフラグ>"
* identifier.system 1.. MS
* identifier.system = $document_identifier (exactly)
* identifier.value 1.. MS

* type = #document (exactly)
* type ^definition = "このバンドルの目的コード。本プロファイルでは document 固定とする。\r\n（document | message | transaction | transaction_response | batch | batch_response | history | searchset | collection）"
* type MS
* timestamp 1.. MS
* timestamp ^short = "このバンドルリソースのインスタンスが作成された日時。"
* timestamp ^definition = "このリソースを生成した日時。時刻の精度はミリ秒とし、タイムゾーンを含めること。　例：\"2021-02-01T13:28:17.239+09:00\""

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    composition 1..1 MS // 文書構成情報
and patient 1..1 MS //  患者情報
and department 0..1 MS // 所属科
and authoringPractitioner 0..1 MS  // 作成者
and authoringDevice 0..1 MS // 作成システム 
and authoringOrganization 0..1 MS // 作成機関
and custodian 1..1 MS // 管理医療機関
and authenticator 0..1 MS // 文書内容責任者
and procedure 1..1 MS // 検査実施情報
and performerRole 0..1 MS // 検査実施者役割
and performingPractitioner 0..1 MS // 検査実施者
and measuringPractitioner 0.. MS // 測定者
and measuringDevice 0.. MS // 測定システム
and observation 0.. MS // 測定結果/解析結果
and documentReference 0..* MS // 外部参照ドキュメント
and binaryData 0..* MS  // 外部参照データ

// 文書構成情報
* entry[composition] ^short = "documentタイプのBundleリソースの先頭entryはCompositionリソース。"
* entry[composition] ^definition = "compositionリソースのエントリー。"
* entry[composition].fullUrl 1.. MS
* entry[composition].fullUrl ^short = "埋め込まれているCompositionリソースを一意に識別するためのUUID"
* entry[composition].fullUrl ^definition = "埋め込まれているCompositionリソースを一意に識別するためのUUID。"
* entry[composition].resource 1.. MS
* entry[composition].resource only  JP_Composition_EKGReport
* entry[composition].resource ^short = "Compositionリソースのインスタンス本体"
* entry[composition].resource ^definition = "Compositionリソースのインスタンス本体。"
* entry[composition].search ..0
* entry[composition].request ..0
* entry[composition].response ..0

// 患者情報
* entry[patient] ^short = "Patientリソース"
* entry[patient] ^definition = "Patientリソースのエントリー。\r\n
【CDA項目】/ClinicalDocument/recordTarget/patientRole/id, addr, telecom, patient"
* entry[patient].fullUrl 1.. MS
* entry[patient].fullUrl ^short = "埋め込まれているPatientリソースを一意に識別するためのUUID"
* entry[patient].fullUrl ^definition = "埋め込まれているPatientリソースを一意に識別するためのUUID。"
* entry[patient].resource 1.. MS
* entry[patient].resource only JP_Patient_SEAMAT // 患者情報エントリ Composition.subject
* entry[patient].resource ^short = "Patientリソースのインスタンス本体"
* entry[patient].resource ^definition = "Patientリソースのインスタンス本体。"
* entry[patient].search ..0
* entry[patient].request ..0
* entry[patient].response ..0

// 所属科
* entry[department].resource only JP_Organization_SEAMAT_Department
* entry[department] ^short = "患者の所属診療科"
* entry[department] ^definition = "患者の所属診療科をOrganizationリソースで記述する。\r\n
【CDA項目】/ClinicalDocument/recordTarget/patientRole/providerOrganization"
* entry[department].fullUrl 1.. MS
* entry[department].fullUrl ^short = "埋め込まれているOrganizationリソースを一意に識別するためのUUID"
* entry[department].fullUrl ^definition = "埋め込まれているOrganizationリソースを一意に識別するためのUUID。"
* entry[department].search ..0
* entry[department].request ..0
* entry[department].response ..0

// 作成者
* entry[authoringPractitioner] ^short = "正当な権限があって文書を作成した個人の情報"
* entry[authoringPractitioner] ^definition = "正当な権限があって文書を作成した個人をPractitionerリソースで記述する。\r\n
【CDA項目】/ClinicalDocument/author/assignedAuthor/id, addr, telecom, assignedPerson"
* entry[authoringPractitioner].fullUrl 1.. MS
* entry[authoringPractitioner].fullUrl ^short = "埋め込まれているPractitionerリソースを一意に識別するためのUUID"
* entry[authoringPractitioner].fullUrl ^definition = "埋め込まれているPractitionerリソースを一意に識別するためのUUID。"
* entry[authoringPractitioner].resource 1.. MS
* entry[authoringPractitioner].resource only JP_Practitioner_SEAMAT_Author
* entry[authoringPractitioner].resource ^short = "Practitionerリソースのインスタンス本体"
* entry[authoringPractitioner].resource ^definition = "Practitionerリソースのインスタンス本体。"
* entry[authoringPractitioner].search ..0
* entry[authoringPractitioner].request ..0
* entry[authoringPractitioner].response ..0

// 作成システム
* entry[authoringDevice] ^short = "正当な権限があって文書を作成したシステムの情報"
* entry[authoringDevice] ^definition = "正当な権限があって文書を作成したシステムをDeviceリソースで記述する。\r\n
【CDA項目】/ClinicalDocument/author/assignedAuthor/id, assignedAuthoringDevice"
* entry[authoringDevice].fullUrl 1.. MS
* entry[authoringDevice].fullUrl ^short = "埋め込まれているDeviceリソースを一意に識別するためのUUID"
* entry[authoringDevice].fullUrl ^definition = "埋め込まれているDeviceリソースを一意に識別するためのUUID。"
* entry[authoringDevice].resource 1.. MS
* entry[authoringDevice].resource only JP_Device_SEAMAT_Author
* entry[authoringDevice].resource ^short = "Deviceリソースのインスタンス本体"
* entry[authoringDevice].resource ^definition = "Deviceリソースのインスタンス本体。"
* entry[authoringDevice].search ..0
* entry[authoringDevice].request ..0
* entry[authoringDevice].response ..0

// 作成機関
* entry[authoringOrganization] ^short = "文書を作成した医療機関の情報"
* entry[authoringOrganization] ^definition = "文書を作成した医療機関をOrganizationリソースで記述する。\r\n
【CDA項目】/ClinicalDocument/author/assignedAuthor/representedOrganization"
* entry[authoringOrganization].fullUrl 1.. MS
* entry[authoringOrganization].fullUrl ^short = "埋め込まれているOrganizationリソースを一意に識別するためのUUID"
* entry[authoringOrganization].fullUrl ^definition = "埋め込まれているOrganizationリソースを一意に識別するためのUUID。"
* entry[authoringOrganization].resource 1.. MS
* entry[authoringOrganization].resource only JP_Organization_SEAMAT_Author
* entry[authoringOrganization].resource ^short = "Organizatinリソースのインスタンス本体"
* entry[authoringOrganization].resource ^definition = "Organizationリソースのインスタンス本体。"
* entry[authoringOrganization].search ..0
* entry[authoringOrganization].request ..0
* entry[authoringOrganization].response ..0

// 管理機関
* entry[custodian] ^short = "文書を管理する医療機関の情報"
* entry[custodian] ^definition = "文書を管理する医療機関をOrganizationリソースで記述する。\r\n
【CDA項目】/ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization"
* entry[custodian].fullUrl 1.. MS
* entry[custodian].fullUrl ^short = "埋め込まれているOrganizationリソースを一意に識別するためのUUID"
* entry[custodian].fullUrl ^definition = "埋め込まれているOrganizationリソースを一意に識別するためのUUID。"
* entry[custodian].resource 1.. MS
* entry[custodian].resource only JP_Organization_SEAMAT_Custodian
* entry[custodian].resource ^short = "Organizatinリソースのインスタンス本体"
* entry[custodian].resource ^definition = "Organizationリソースのインスタンス本体。"
* entry[custodian].search ..0
* entry[custodian].request ..0
* entry[custodian].response ..0

// 文書内容責任者
* entry[authenticator] ^short = "文書内容に責任を持つ個人の情報"
* entry[authenticator] ^definition = "文書内容に責任を持つ個人をPractitionerリソースで記述する。\r\n
【CDA項目】/ClinicalDocument/authenticator/assignedEntity"
* entry[authenticator].fullUrl 1.. MS
* entry[authenticator].fullUrl ^short = "埋め込まれているPractitionerリソースを一意に識別するためのUUID"
* entry[authenticator].fullUrl ^definition = "埋め込まれているPractitionerリソースを一意に識別するためのUUID。"
* entry[authenticator].resource 1.. MS
* entry[authenticator].resource only JP_Practitioner_SEAMAT_Authenticator
* entry[authenticator].resource ^short = "Practitionerリソースのインスタンス本体"
* entry[authenticator].resource ^definition = "Practitionerリソースのインスタンス本体。"
* entry[authenticator].search ..0
* entry[authenticator].request ..0
* entry[authenticator].response ..0

// 検査実施情報
* entry[procedure] ^short = "検査実施応報"
* entry[procedure] ^definition = "検査実施者の役割をPractitionerRoleリソースで記述する。\r\n
【SEAMAT項目】<検査日><データ種別コード><レポート/データフラグ><データ管理番号><オーダ番号><部門管理番号>"
* entry[procedure].fullUrl 1.. MS
* entry[procedure].fullUrl ^short = "埋め込まれているProcedureリソースを一意に識別するためのUUID"
* entry[procedure].fullUrl ^definition = "埋め込まれているProcedureリソースを一意に識別するためのUUID。"
* entry[procedure].resource 1.. MS
* entry[procedure].resource only JP_Procedure_SEAMAT
* entry[procedure].resource ^short = "Procedureリソースのインスタンス本体"
* entry[procedure].resource ^definition = "Procedureリソースのインスタンス本体。"
* entry[procedure].search ..0
* entry[procedure].request ..0
* entry[procedure].response ..0

// 検査実施者役割
* entry[performerRole] ^short = "検査実施者の役割情報"
* entry[performerRole] ^definition = "検査実施者の役割をPractitionerRoleリソースで記述する。\r\n
【CDA項目】/ClinicalDocument/authenticator/assignedEntity"
* entry[performerRole].fullUrl 1.. MS
* entry[performerRole].fullUrl ^short = "埋め込まれているPractitionerRoleリソースを一意に識別するためのUUID"
* entry[performerRole].fullUrl ^definition = "埋め込まれているPractitionerRoleリソースを一意に識別するためのUUID。"
* entry[performerRole].resource 1.. MS
* entry[performerRole].resource only JP_PractitionerRole_SEAMAT_Performer
* entry[performerRole].resource ^short = "Practitionerリソースのインスタンス本体"
* entry[performerRole].resource ^definition = "Practitionerリソースのインスタンス本体。"
* entry[performerRole].search ..0
* entry[performerRole].request ..0
* entry[performerRole].response ..0

// 検査実施者
* entry[performingPractitioner] ^short = "検査を実施した個人の情報"
* entry[performingPractitioner] ^definition = "検査を実施した個人をPractitionerリソースで記述する。\r\n
【CDA項目】/ClinicalDocument/documentationOf/serviceEvent/performer/assignedEntity"
* entry[performingPractitioner].fullUrl 1.. MS
* entry[performingPractitioner].fullUrl ^short = "埋め込まれているPractitionerリソースを一意に識別するためのUUID"
* entry[performingPractitioner].fullUrl ^definition = "埋め込まれているPractitionerリソースを一意に識別するためのUUID。"
* entry[performingPractitioner].resource 1.. MS
* entry[performingPractitioner].resource only JP_Practitioner_SEAMAT_Performer
* entry[performingPractitioner].resource ^short = "Practitionerリソースのインスタンス本体"
* entry[performingPractitioner].resource ^definition = "Practitionerリソースのインスタンス本体。"
* entry[performingPractitioner].search ..0
* entry[performingPractitioner].request ..0
* entry[performingPractitioner].response ..0

// 測定者
* entry[measuringPractitioner] ^short = "測定を行った個人の情報"
* entry[measuringPractitioner] ^definition = "測定を行った個人をPractitionerリソースで記述する。\r\n
【CDA項目】/ClinicalDocument/component/structuredBody/component/section/author/assignedAuthor/id, addr, telecom, assignedPerson"
* entry[measuringPractitioner].fullUrl 1.. MS
* entry[measuringPractitioner].fullUrl ^short = "埋め込まれているPractitionerリソースを一意に識別するためのUUID"
* entry[measuringPractitioner].fullUrl ^definition = "埋め込まれているPractitionerリソースを一意に識別するためのUUID。"
* entry[measuringPractitioner].resource 1.. MS
* entry[measuringPractitioner].resource only JP_Practitioner_SEAMAT_Measurer
* entry[measuringPractitioner].resource ^short = "Practitionerリソースのインスタンス本体"
* entry[measuringPractitioner].resource ^definition = "Practitionerリソースのインスタンス本体。"
* entry[measuringPractitioner].search ..0
* entry[measuringPractitioner].request ..0
* entry[measuringPractitioner].response ..0

// 測定システム
* entry[measuringDevice] ^short = "測定を行ったシステムの情報"
* entry[measuringDevice] ^definition = "測定を行ったシステムをDeviceリソースで記述する。\r\n
【CDA項目】/ClinicalDocument/component/structuredBody/component/section/author/assignedAuthor/id, assignedAuthoringDevice"
* entry[measuringDevice].fullUrl 1.. MS
* entry[measuringDevice].fullUrl ^short = "埋め込まれているDeviceリソースを一意に識別するためのUUID"
* entry[measuringDevice].fullUrl ^definition = "埋め込まれているDeviceリソースを一意に識別するためのUUID。"
* entry[measuringDevice].resource 1.. MS
* entry[measuringDevice].resource only JP_Device_SEAMAT_Measurer
* entry[measuringDevice].resource ^short = "Deviceリソースのインスタンス本体"
* entry[measuringDevice].resource ^definition = "Deviceリソースのインスタンス本体。"
* entry[measuringDevice].search ..0
* entry[measuringDevice].request ..0
* entry[measuringDevice].response ..0

// 測定結果／解析結果
* entry[observation] ^short = "測定結果／解析結果の情報"
* entry[observation] ^definition = "測定結果／解析結果をObservationリソースで記述する。\r\n
【CDA項目】/ClinicalDocument/component/structuredBody/component/section/entry/observation"
* entry[observation].fullUrl 1.. MS
* entry[observation].fullUrl ^short = "埋め込まれているObservationリソースを一意に識別するためのUUID"
* entry[observation].fullUrl ^definition = "埋め込まれているObservationリソースを一意に識別するためのUUID。"
* entry[observation].resource 1.. MS
* entry[observation].resource only JP_Observation_SEAMAT
* entry[observation].resource ^short = "Observationリソースのインスタンス本体"
* entry[observation].resource ^definition = "Observationリソースのインスタンス本体。"
* entry[observation].search ..0
* entry[observation].request ..0
* entry[observation].response ..0

// 外部参照ドキュメント
* entry[documentReference] ^short = "外部参照ドキュメントの情報"
* entry[documentReference] ^definition = "外部参照しているドキュメントの情報をDocumentReferenceリソースで記述する。\r\n
【CDA項目】/ClinicalDocument/component/structuredBody/component/section/entry/observation/reference/externalDocument"
* entry[documentReference].fullUrl 1.. MS
* entry[documentReference].fullUrl ^short = "埋め込まれているDocumentReferenceリソースを一意に識別するためのUUID"
* entry[documentReference].fullUrl ^definition = "埋め込まれているDocumentReferenceリソースを一意に識別するためのUUID。"
* entry[documentReference].resource 1.. MS
* entry[documentReference].resource only JP_DocumentReference_SEAMAT
* entry[documentReference].resource ^short = "DocumentReferenceリソースのインスタンス本体"
* entry[documentReference].resource ^definition = "DocumentReferenceリソースのインスタンス本体。"
* entry[documentReference].search ..0
* entry[documentReference].request ..0
* entry[documentReference].response ..0

// 外部参照データ
* entry[binaryData] ^short = "外部参照データの情報"
* entry[binaryData] ^definition = "外部参照しているバイナリデータの情報をBinaryリソースで記述する。\r\n
【CDA項目】/ClinicalDocument/component/structuredBody/component/section/entry/observationMedia"
* entry[binaryData].fullUrl 1.. MS
* entry[binaryData].fullUrl ^short = "埋め込まれているBinaryリソースを一意に識別するためのUUID"
* entry[binaryData].fullUrl ^definition = "埋め込まれているBinaryリソースを一意に識別するためのUUID。"
* entry[binaryData].resource 1.. MS
* entry[binaryData].resource only JP_Binary_SEAMAT
* entry[binaryData].resource ^short = "Binaryリソースのインスタンス本体"
* entry[binaryData].resource ^definition = "Binaryリソースのインスタンス本体。"
* entry[binaryData].search ..0
* entry[binaryData].request ..0
* entry[binaryData].response ..0
