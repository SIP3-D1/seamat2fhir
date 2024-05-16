Invariant: bundle-cathreport-metaprofile
Description: "meta.profileには、指定したプロファイルのURLの記述が存在しなければならない。"
Severity: #error
Expression: "meta.profile.where($this = 'http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Bundle_CATHReport').exists()"

// ==============================
//   Profile 定義
// ==============================
Profile: JP_Bundle_CATHReport
Parent: Bundle
Id: JP-Bundle-cathreport
Title: "SEAMAT CATH Report Bundle Profile"
Description: "SEAMAT心臓カテーテル検査レポートのための文書 Bundleリソース"
* ^url = $JP_Bundle_CATHReport
* ^status = #active
* ^date = "2024-05-11"
* . ^short = "SEAMAT心臓カテーテル検査レポートのための文書 Bundleリソース"
* . ^definition = "SEAMAT心臓カテーテル検査レポートのための文書 Bundleリソース"

* obeys bundle-cathreport-metaprofile

* meta.lastUpdated 1.. MS
* meta.profile 1.. MS

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
and performerRole 0.. MS // 検査実施者役割
and performingPractitioner 0.. MS // 検査実施者
and observation 0.. MS // 測定結果/解析結果
and condition 0.. MS // PCI合併症など
and pciproc 0.. MS // PCI処置
and pcidevice 0.. MS // PCI使用機器

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

// PCI合併症など併存疾患情報、冠危険因子、循環器疾患既往歴、PCI合併症の情報
* entry[condition] ^short = "併存疾患情報、冠危険因子、循環器疾患既往歴、PCI合併症の情報"
* entry[condition] ^definition = "併存疾患情報、冠危険因子、循環器疾患既往歴、PCI合併症の情報をConditionリソースで記述する。\r\n
【CDA項目】/ClinicalDocument/component/structuredBody/component/section/entry/observation"
* entry[condition].fullUrl 1.. MS
* entry[condition].fullUrl ^short = "埋め込まれているConditionリソースを一意に識別するためのUUID"
* entry[condition].fullUrl ^definition = "埋め込まれているConditionリソースを一意に識別するためのUUID。"
* entry[condition].resource 1.. MS
* entry[condition].resource only JP_Condition_CATH
* entry[condition].resource ^short = "Conditionリソースのインスタンス本体"
* entry[condition].resource ^definition = "Conditionリソースのインスタンス本体。"
* entry[condition].search ..0
* entry[condition].request ..0
* entry[condition].response ..0

// PCI処置の情報
* entry[pciproc] ^short = "PCI処置の情報"
* entry[pciproc] ^definition = "PCI処置の情報をProcedureリソースで記述する。\r\n
【CDA項目】/ClinicalDocument/component/structuredBody/component/section/entry/observation"
* entry[pciproc].fullUrl 1.. MS
* entry[pciproc].fullUrl ^short = "埋め込まれているProcedureリソースを一意に識別するためのUUID"
* entry[pciproc].fullUrl ^definition = "埋め込まれているProcedureリソースを一意に識別するためのUUID。"
* entry[pciproc].resource 1.. MS
* entry[pciproc].resource only JP_Procedure_PCI
* entry[pciproc].resource ^short = "Procedureリソースのインスタンス本体"
* entry[pciproc].resource ^definition = "Procedureリソースのインスタンス本体。"
* entry[pciproc].search ..0
* entry[pciproc].request ..0
* entry[pciproc].response ..0

// PCI使用機器の情報
* entry[pcidevice] ^short = "PCI使用機器の情報"
* entry[pcidevice] ^definition = "PCI使用機器の情報をDeviceリソースで記述する。\r\n
【CDA項目】/ClinicalDocument/component/structuredBody/component/section/entry/observation"
* entry[pcidevice].fullUrl 1.. MS
* entry[pcidevice].fullUrl ^short = "埋め込まれているDeviceリソースを一意に識別するためのUUID"
* entry[pcidevice].fullUrl ^definition = "埋め込まれているDeviceリソースを一意に識別するためのUUID。"
* entry[pcidevice].resource 1.. MS
* entry[pcidevice].resource only JP_Device_PCI
* entry[pcidevice].resource ^short = "Deviceリソースのインスタンス本体"
* entry[pcidevice].resource ^definition = "Deviceリソースのインスタンス本体。"
* entry[pcidevice].search ..0
* entry[pcidevice].request ..0
* entry[pcidevice].response ..0
