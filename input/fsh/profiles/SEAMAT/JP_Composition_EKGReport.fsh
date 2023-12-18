Invariant: composition-ekgreport-metaprofile
Description: "meta.profileには、指定したプロファイルのURLの記述が存在しなければならない。"
Severity: #error
Expression: "meta.profile.where($this = 'http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Composition_EKGReport').exists()"

// ==============================
//   Profile 定義
// ==============================
Profile: JP_Composition_EKGReport
Parent: Composition
Id: JP-Composition-ekgreport
Title: "SEAMAT EKG Report Composition Profile"
Description:  "心電図検査レポート情報のリソース構成情報と文書日付に関するCompositionの派生プロファイル"
* ^url = $JP_Composition_EKGReport
* ^status = #active
* ^date = "2023-11-12"
* meta.lastUpdated 1.. MS
* meta.profile 1.. MS
//* meta.profile = $JP_Composition_EKGReport

* obeys composition-ekgreport-metaprofile

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains $composition-clinicaldocument-versionNumber named version 0..1
* extension[version] ^short = "文書バージョンを表す拡張"
* extension[version] 0..1 MS
* extension[version].url 1..1 MS
* extension[version].value[x] ^short = "文書のバージョン番号を表す文字列。"
* extension[version].value[x] ^definition = "文書のバージョン番号を表す文字列。\r\n例 : 第１版は  \"1\" とする。"
* extension[version].value[x] 1..1 MS

* language 0..1 MS
* language ^short = "リソース コンテンツの言語"
* language ^definition = "リソースが記述される基本言語\r\n
【CDA項目】/ClinicalDocument/languageCode"

* identifier 1.. MS
* identifier.system 1..1 MS
* identifier.system ^short = "文書リソースIDの名前空間を表すURI。"
* identifier.system ^definition = "文書リソースIDの名前空間を表すURI。"
* identifier.system = $document_identifier (exactly)
* identifier.value ^short = "文書リソースID"
* identifier.value ^definition = "文書リソースID"
* identifier.value 1..1 MS

* status = #final (exactly)
* status ^short = "この文書のステータス。"
* status ^definition = "この文書のステータス。\r\n仕様上は、preliminary | final | amended | entered_in_error　のいずれかを設定できるが、医療機関から登録される段階では、\"final\" でなければならない。"

* type ^short = "文書区分コード"
* type ^definition = "documentタイプのうち文書種別"
* type MS
* type.coding 1..1 MS
* type from $JP_Composition_EKGReport_DocumentType_VS (required)
* type.coding.system = $JP_Composition_SEAMAT_DocumentType_CS (exactly)
* type.coding.system ^definition = "文書区分コードのコード体系を識別するURI。固定値"
* type.coding.system MS
* type.coding.version
* type.coding.code 1.. MS
* type.coding.code = #28010-7 (exactly)
* type.coding.code ^definition = "EKG Report\"28010-7\"を指定。固定値。"
* type.coding.display = "EKG Report" (exactly)
* type.coding.display ^short = "文書区分コードの表示名。"
* type.coding.display ^definition = "文書区分コードの表示名。"
* type.coding.display MS

* category 1..1 MS
* category ^short = "文書カテゴリーコード"
* category ^definition = "文書カテゴリーコード。　心電図検査レポートではtype.coding.codeに記述される文書区分コードと同一。"
* category.coding 1..1 MS
* category from $JP_Composition_EKGReport_DocumentType_VS (required)
* category.coding.system 1.. MS
* category.coding.system = $JP_Composition_SEAMAT_DocumentType_CS (exactly)
* category.coding.system ^short = "文書カテゴリコードのコード体系"
* category.coding.system ^definition = "文書カテゴリコードのコード体系を識別するURI。固定値。"
* category.coding.code 1.. MS
* category.coding.code = #28010-7 (exactly)
* category.coding.code ^short = "文書カテゴリコード"
* category.coding.code ^definition = "文書カテゴリコード"
* category.coding.display ^short = "文書カテゴリコードの表示名"
* category.coding.display ^definition = "文書カテゴリ"
* category.coding.display MS

* subject 1.. MS
* subject ^short = "患者情報を表すPatientリソースへの参照。"
* subject ^definition = "患者情報を表すPatientリソースへの参照。\r\n
【CDA項目】/ClinicalDocument/recordTraget"
* subject only Reference(JP_Patient_SEAMAT)
* subject.reference 1..1 MS
* subject.reference ^short = "PatientリソースのfullUrl要素に指定されるUUIDを指定。"
* subject.reference ^definition = "Bundleリソースに記述されるPatientリソースのfullUrl要素に指定されるUUIDを指定。\r\n例：\"urn:uuid:11f0a9a6_a91d_3aef_fc4e_069995b89c4f\""

* date ^definition = "このリソースを作成または最後に編集した日時。ISO8601に準拠し、秒の精度まで記録し、タイムゾーンも付記する。\r\n午前0時を\"24:00\"と記録することはできないため\"00:00\"と記録すること。　\r\n例：\"2020_08_21T12:28:21+09:00\"\r\n
【CDA項目】/ClinicalDocument/effectiveTimeないし/ClinicalDocument/author/time"
* date 1..1 MS

* author ^slicing.discriminator.type = #profile
* author ^slicing.discriminator.path = "resolve()"
* author ^slicing.rules = #open

* author ^short = "文書作成責任者と文書作成機関とへの参照。"
* author ^definition = "文書作成責任者を表すPractitionerリソースへの参照、および,文書作成機関か、または文書作成機関の診療科と文書作成機関を表すOrganizationリソースへの参照の2つのReferenceを繰り返す。
【CDA項目】/ClinicalDocument/author"
* author contains
    authoringPractitioner 0..1 MS 
and authoringDevice 0..1 MS
and authoringOrganization 0..1 MS
* author[authoringPractitioner] only  Reference(JP_Practitioner_SEAMAT_Author)
* author[authoringDevice] only  Reference(JP_Device_SEAMAT_Author)
* author[authoringOrganization] only  Reference(JP_Organization_SEAMAT_Author)

* title 1..1 MS
* title ^definition = "文書の人間が読めるタイトル\r\n
【CDA項目】/ClinicalDocument/title"
//* title = "診療情報提供書" (exactly)

* confidentiality 0..1 MS
* confidentiality ^definition = "【CDA項目】/ClinicalDocument/confidentialityCode"

* attester 0.. MS
* attester.mode = #official (exactly)
* attester.time 0..1 MS
* attester.time ^definition = "【CDA項目】/ClinicalDocument/authenticator/time"
* attester.party only Reference(JP_Practitioner_SEAMAT_Authenticator)
* attester.party ^definition = "【CDA項目】/ClinicalDocument/authenticator/assignedEntity"

* custodian 1..1 MS
* custodian ^short = "文書の作成・修正を行い、文書の管理責任を持つ医療機関（Organizationリソース）への参照"
* custodian ^definition = "文書作成機関と同一の組織の場合、custodian要素からは文書作成機関を表すOrganizationリソースへの参照となる。文書作成機関とは異なる組織である場合は、文書作成機関とは別のOrganizationリソースで表現し、custodian要素からはそのOrganizationリソースを参照する。\r\n
【CDA項目】/ClinicalDocument/custodian"
* custodian only Reference(JP_Organization_SEAMAT_Custodian)
* custodian.reference 1..1
* custodian.reference ^short = "custodianに対応するOrganizationリソースのfullUrl要素に指定されるUUIDを指定。"
* custodian.reference ^definition = "custodianに対応するOrganizationリソースのfullUrl要素に指定されるUUIDを指定。\r\n例：\"urn:uuid:179f9f7f_e546_04c2_6888_a9e0b24e5720\""

* event 1..1 MS
* event ^short = "検査実施日時"
* event ^definition = "心電図検査レポートの対象の検査を実施した日時の情報"
* event.code 0..1 MS
* event.code ^definition = "【CDA項目】/ClinicalDocument/documentationOf/serviceEvent/code"
* event.code.coding ..0
* event.code.text 1.. MS
* event.code.text = "心電図検査実施日時" (exactly)
* event.period 1.. MS
* event.period ^short = "心電図検査実施日時"
* event.period ^definition = "心電図検査レポートの対象の検査を実施した日時。ISO8601に準拠yyyy-mm-dd形式で記述する。\r\n
【CDA項目】/ClinicalDocument/documentationOf/serviceEvent/effectiveTime"
* event.period.start 1.. MS
* event.period.start ^short = "検査開始日時"
* event.period.start ^definition = "心電図検査を開始した日時。ISO8601に準拠yyyy-mm-ddTHH:MM:SS+09:00形式で記述する。"
* event.period.end ^short = "検査終了日時"
* event.period.end ^definition = "心電図検査を終了した日時。"
* event.detail 1.. MS
* event.detail ^short = "心電図検査実施情報"
* event.detail ^definition = "心電図レポートの対象の検査の実施情報。SS-MIX2拡張ストレージのコンテンツフォルダ名に含まれるキー情報を記述する。"
* event.detail only Reference(JP_Procedure_SEAMAT)

* section.author ..1 MS
* section.author only Reference(JP_Practitioner_SEAMAT_Measurer or JP_Device_SEAMAT_Measurer)

* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding.code"
* section ^slicing.rules = #open
* section contains
        additional 0..1 MS    // 患者付帯情報
    and history 0..1 MS // 既往歴
    and subjective 0..1 MS // 自覚症状
	and usedDrug 0..1 MS  // 検査時使用薬
    and examDescription 0..1 MS  //  検査記述
    and ekgComment 0..1    MS  //  心電図コメント
    and measurement 0..1 MS // 計測値（生理検査）
    and analysis 0..1 MS // 解析結果（生理検査）
    and ekgFinding 0..1 MS // 超音波所見
    and examFinding 0..1 MS // 検査所見
    and doctorFinding 0..1 MS // 医師所見
    and external 0..1 MS // 外部参照

* section.title ^short = "セクションタイトル"
* section.title ^definition = "セクションタイトル。固定値。"
* section.code 1.. MS
* section.code ^short = "セクション区分コード"
* section.code ^definition = "セクション区分コード"
* section.code.coding 1..1 MS
* section.code.coding.system ^short = "セクション区分コードのコード体系"
* section.code.coding.system ^definition = "セクション区分コードのコード体系を識別するURI。固定値。"
* section.code.coding.code 1.. MS
* section.code.coding.code ^short = "セクション区分のコード値"
* section.code.coding.code ^definition = "セクション区分のコード値。\r\n固定値。"
* section.code.coding.display ^short = "セクション区分コードの表示名"
* section.code.coding.display ^definition = "セクション区分コードの表示名。"
* section.code.coding.display MS
* section.code.coding.userSelected ..0
* section.text ^short = "このセクションに含められるすべてのテキスト（叙述的記述）表現"
* section.text ^definition = "本セクションの内容をテキストで表現した文字列。内容を省略しても構わない。 このデータは人がこのセクションの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。"
* section.text MS
* section.text.status MS
* section.text.status ^short = "セクションの内容作成状態コード"
* section.text.status ^definition = "generated | extensions | additional | empty　から　\"additional\" の固定値。このセクションに含められるすべてのentry要素による情報に加えて、それらで表現し尽くせていない情報も含めた完全な叙述表現であることを示す。"
* section.text.div ^short = "xhtml簡略形式に従った叙述記述データ"
* section.text.div ^definition = "本セクションの内容を xhtml 形式のテキストで表現した文字列。内容を省略しても構わない。 \r\nこのデータは人がこのセクションの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。\r\nテキストは構造化された情報から自動的にシステムが生成したものとし、それ以上に情報を追加してはならない。"
* section.mode ..0
* section.orderedBy ..0

// 患者付帯情報
* section[additional] ^short = "患者付帯情報セクション"
* section[additional] ^definition = "患者付帯情報セクション"
* section[additional].title = "患者付帯情報" (exactly)
* section[additional].code.coding from $JP_Composition_EKGReport_SectionCode_VS (required)
* section[additional].code.coding.system = $JP_Composition_SEAMAT_SectionCode_CS (exactly)
* section[additional].code.coding.code = #52460-3 (exactly)
* section[additional].code.coding.display = "患者付帯情報セクション"
* section[additional].entry 1..
* section[additional].entry only Reference(JP_Observation_SEAMAT)
* section[additional].entry ^short = "患者付帯情報の構造化情報"
* section[additional].entry ^definition = "患者付帯情報の構造化情報"
* section[additional].text.status = #additional (exactly)
* section[additional].emptyReason ..1

//　既往歴
* section[history] ^short = "既往歴セクション"
* section[history] ^definition = "既往歴セクション"
* section[history].title = "既往歴" (exactly)
* section[history].code.coding from $JP_Composition_EKGReport_SectionCode_VS (required)
* section[history].code.coding.system = $JP_Composition_SEAMAT_SectionCode_CS (exactly)
* section[history].code.coding.code = #11348-0 (exactly)
* section[history].code.coding.display = "既往歴セクション"
* section[history].text.status = #additional (exactly)
* section[history].entry ..0

//　自覚症状
* section[subjective] ^short = "自覚症状セクション"
* section[subjective] ^definition = "自覚症状セクション"
* section[subjective].title = "自覚症状" (exactly)
* section[subjective].code.coding from $JP_Composition_EKGReport_SectionCode_VS (required)
* section[subjective].code.coding.system = $JP_Composition_SEAMAT_SectionCode_CS (exactly)
* section[subjective].code.coding.code = #61150-9 (exactly)
* section[subjective].code.coding.display = "自覚症状セクション"
* section[subjective].text.status = #additional (exactly)
* section[subjective].entry ..0

//　検査時使用薬
* section[usedDrug] ^short = "検査時使用薬セクション"
* section[usedDrug] ^definition = "検査時使用薬セクション"
* section[usedDrug].code.coding from $JP_Composition_EKGReport_SectionCode_VS (required)
* section[usedDrug].code.coding.system = $JP_Composition_SEAMAT_SectionCode_CS (exactly)
* section[usedDrug].title = "検査時使用薬" (exactly)
* section[usedDrug].code.coding.code = #15334-6 (exactly)
* section[usedDrug].code.coding.display = "検査時使用薬セクション"
* section[usedDrug].text.status = #additional (exactly)
* section[usedDrug].entry ..0

//　検査記述
* section[examDescription] ^short = "検査記述セクション"
* section[examDescription] ^definition = "検査記述セクション"
* section[examDescription].title = "検査記述" (exactly)
* section[examDescription].code.coding from $JP_Composition_EKGReport_SectionCode_VS (required)
* section[examDescription].code.coding.system = $JP_Composition_SEAMAT_SectionCode_CS (exactly)
* section[examDescription].code.coding.code = #70004-7 (exactly)
* section[examDescription].code.coding.display = "検査記述セクション"
* section[examDescription].text.status = #additional (exactly)
//* section[examDescription].entry ..0

//　心電図コメント
* section[ekgComment] ^short = "心電図コメントセクション"
* section[ekgComment] ^definition = "心電図コメントセクション"
* section[ekgComment].title = "心電図コメント" (exactly)
* section[ekgComment].code.coding from $JP_Composition_EKGReport_SectionCode_VS (required)
* section[ekgComment].code.coding.system = $JP_Composition_SEAMAT_SectionCode_CS (exactly)
* section[ekgComment].code.coding.code = #11524-6 (exactly)
* section[ekgComment].code.coding.display = "心電図コメントセクション"
* section[ekgComment].text.status = #additional (exactly)
* section[ekgComment].entry ..0

// 計測値（生理検査）
* section[measurement] ^short = "計測値（生理検査）セクション"
* section[measurement] ^definition = "計測値（生理検査）セクション"
* section[measurement].title = "計測値" (exactly)
* section[measurement].code.coding from $JP_Composition_EKGReport_SectionCode_VS (required)
* section[measurement].code.coding.system = $JP_Composition_SEAMAT_SectionCode_CS (exactly)
* section[measurement].code.coding.code = #29273-0 (exactly)
* section[measurement].code.coding.display = "計測値セクション"
* section[measurement].text.status = #additional (exactly)
* section[measurement].entry 1..
* section[measurement].entry ^short = "計測値（生理検査）の構造化情報"
* section[measurement].entry ^definition = "計測値（生理検査）の構造化情報"
* section[measurement].entry only Reference(JP_Observation_SEAMAT)
* section[measurement].emptyReason ..1

// 解析結果（生理検査）
* section[analysis] ^short = "解析結果（生理検査）セクション"
* section[analysis] ^definition = "解析結果（生理検査）セクション"
* section[analysis].title = "解析結果" (exactly)
* section[analysis].code.coding from $JP_Composition_EKGReport_SectionCode_VS (required)
* section[analysis].code.coding.system = $JP_Composition_SEAMAT_SectionCode_CS (exactly)
* section[analysis].code.coding.code = #64110-0 (exactly)
* section[analysis].code.coding.display = "解析結果セクション"
* section[analysis].text.status = #additional (exactly)
* section[analysis].entry 1..
* section[analysis].entry ^short = "解析結果（生理検査）の構造化情報"
* section[analysis].entry ^definition = "解析結果（生理検査）の構造化情報"
* section[analysis].entry only Reference(JP_Observation_SEAMAT)
* section[analysis].emptyReason ..1

//　超音波所見
* section[ekgFinding] ^short = "超音波所見セクション"
* section[ekgFinding] ^definition = "超音波所見セクション"
* section[ekgFinding].title = "超音波所見" (exactly)
* section[ekgFinding].code.coding from $JP_Composition_EKGReport_SectionCode_VS (required)
* section[ekgFinding].code.coding.system = $JP_Composition_SEAMAT_SectionCode_CS (exactly)
* section[ekgFinding].code.coding.code = #12131-9 (exactly)
* section[ekgFinding].code.coding.display = "超音波所見セクション"
* section[ekgFinding].text.status = #additional (exactly)
* section[ekgFinding].entry ..0

//　検査所見
* section[examFinding] ^short = "検査所見セクション"
* section[examFinding] ^definition = "検査所見セクション"
* section[examFinding].title = "検査所見" (exactly)
* section[examFinding].code.coding from $JP_Composition_EKGReport_SectionCode_VS (required)
* section[examFinding].code.coding.system = $JP_Composition_SEAMAT_SectionCode_CS (exactly)
* section[examFinding].code.coding.code = #47045-0 (exactly)
* section[examFinding].code.coding.display = "検査所見セクション"
* section[examFinding].text.status = #additional (exactly)
* section[examFinding].entry ..0

//　医師所見
* section[doctorFinding] ^short = "医師所見セクション"
* section[doctorFinding] ^definition = "医師所見セクション"
* section[doctorFinding].title = "医師所見" (exactly)
* section[doctorFinding].code.coding from $JP_Composition_EKGReport_SectionCode_VS (required)
* section[doctorFinding].code.coding.system = $JP_Composition_SEAMAT_SectionCode_CS (exactly)
* section[doctorFinding].code.coding.code = #29308-4 (exactly)
* section[doctorFinding].code.coding.display = "医師所見セクション"
* section[doctorFinding].text.status = #additional (exactly)
* section[doctorFinding].entry ..0

// 外部参照
* section[external] ^short = "外部参照セクション"
* section[external] ^definition = "外部参照セクション"
//* section[external].title = "外部参照" (exactly)
* section[external].code.coding from $JP_Composition_EKGReport_SectionCode_VS (required)
* section[external].code.coding.system = $JP_Composition_SEAMAT_SectionCode_CS (exactly)
* section[external].code.coding.code = #78239-1 (exactly)
* section[external].code.coding.display = "外部参照セクション"
* section[external].text.status = #additional (exactly)
* section[external].entry 1..
* section[external].entry ^short = "外部参照の構造化情報"
* section[external].entry ^definition = "外部参照の構造化情報"
* section[external].entry only Reference(JP_DocumentReference_SEAMAT or JP_Binary_SEAMAT)
* section[external].emptyReason ..1
