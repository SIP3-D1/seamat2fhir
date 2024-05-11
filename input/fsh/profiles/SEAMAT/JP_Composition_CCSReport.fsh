Invariant: composition-ccsreport-metaprofile
Description: "meta.profileには、指定したプロファイルのURLの記述が存在しなければならない。"
Severity: #error
Expression: "meta.profile.where($this = 'http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Composition_CCSReport').exists()"

// ==============================
//   Profile 定義
// ==============================
Profile: JP_Composition_CCSReport
Parent: Composition
Id: JP-Composition-ccsreport
Title: "SEAMAT CCS Report Composition Profile"
Description:  "心臓カテーテル検査レポート情報のリソース構成情報と文書日付に関するCompositionの派生プロファイル"
* ^url = $JP_Composition_CCSReport
* ^status = #active
* ^date = "2024-05-11"
* meta.lastUpdated 1.. MS
* meta.profile 1.. MS

* obeys composition-ccsreport-metaprofile

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
* type from $JP_Composition_CCSReport_DocumentType_VS (required)
* type.coding.system = $JP_Composition_SEAMAT_DocumentType_CS (exactly)
* type.coding.system ^definition = "文書区分コードのコード体系を識別するURI。固定値"
* type.coding.system MS
* type.coding.version
* type.coding.code 1.. MS
* type.coding.code = #18745-0 (exactly)
* type.coding.code ^definition = "Cardiac catheterization study\"18745-0\"を指定。固定値。"
* type.coding.display = "Cardiac catheterization study" (exactly)
* type.coding.display ^short = "文書区分コードの表示名。"
* type.coding.display ^definition = "文書区分コードの表示名。"
* type.coding.display MS

* category 1..1 MS
* category ^short = "文書カテゴリーコード"
* category ^definition = "文書カテゴリーコード。　心電図検査レポートではtype.coding.codeに記述される文書区分コードと同一。"
* category.coding 1..1 MS
* category from $JP_Composition_CCSReport_DocumentType_VS (required)
* category.coding.system 1.. MS
* category.coding.system = $JP_Composition_SEAMAT_DocumentType_CS (exactly)
* category.coding.system ^short = "文書カテゴリコードのコード体系"
* category.coding.system ^definition = "文書カテゴリコードのコード体系を識別するURI。固定値。"
* category.coding.code 1.. MS
* category.coding.code = #18745-0 (exactly)
* category.coding.code ^short = "文書カテゴリコード"
* category.coding.display = "Cardiac catheterization study" (exactly)
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
* event.detail ^definition = "心電図検査レポートの対象の検査の実施情報。SS-MIX2拡張ストレージのコンテンツフォルダ名に含まれるキー情報を記述する。"
* event.detail only Reference(JP_Procedure_SEAMAT)

* section.author ..1 MS
* section.author only Reference(JP_Practitioner_SEAMAT_Measurer or JP_Device_SEAMAT_Measurer)

* section ^slicing.discriminator[+].type = #value
* section ^slicing.discriminator[=].path = "code.coding.system"
* section ^slicing.discriminator[+].type = #value
* section ^slicing.discriminator[=].path = "code.coding.code"
* section ^slicing.rules = #open
* section contains
        additional 0..1 MS  // 患者付帯情報
    and comorbidity 0..1 MS // 併存疾患情報
    and riskFactors	0..1 MS // 冠危険因子
    and history 0..1 MS // 循環器疾患既往歴
    and revascularization 0..1 MS //	過去の血行再建
    and preoperative 0..1 MS // 術前情報
    and studyInfo 0..1 MS // 検査情報
    and studyCont 0..1 MS // 検査内容
    and assisted 0..1 MS // 補助循環治療
    and catheter 0..1 MS // カテーテル
    and segment 0..1 MS // 冠動脈病変
    and segmentEx 0..1 MS // 冠動脈病変［拡張項目］
    and lvg 0..1 MS // LVG
    and bloodPressure 0..1 MS // 心内圧データ
    and spasm 0..1 MS // スパズム負荷試験
    and complication 0..1 MS //	PCI合併症
    and procedure 0..* MS // PCI処置
    and procedureEx 0..* MS // PCI処置［拡張項目］
    and procDetailEx 0..* MS // PCI処置詳細［拡張項目］
    and procDetailStentEx 0..* MS // PCI処置詳細ステント基本情報［拡張項目］

* section.title 1.. MS
* section.title ^short = "セクションタイトル"
* section.title ^definition = "セクションタイトル。固定値。"
* section.code 1.. MS
* section.code ^short = "セクション区分コード"
* section.code ^definition = "セクション区分コード"
* section.code.coding 1..1 MS
* section.code.coding from $JP_Composition_CCSReport_SectionCode_VS (required)
* section.code.coding.system 1.. MS
* section.code.coding.system = $JP_Composition_SEAMAT_SectionCode_CS (exactly)
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
* section.text.status = #additional (exactly)
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
* section[additional].code.coding.code = #52460-3 (exactly)
* section[additional].code.coding.display = "患者付帯情報セクション"
* section[additional].entry 1..
* section[additional].entry only Reference(JP_Observation_SEAMAT)
* section[additional].entry ^short = "患者付帯情報の構造化情報"
* section[additional].entry ^definition = "患者付帯情報の構造化情報"
* section[additional].emptyReason ..1

// 併存疾患情報
* section[comorbidity] ^short = "併存疾患情報セクション"
* section[comorbidity] ^definition = "併存疾患情報セクション"
* section[comorbidity].title = "併存疾患情報" (exactly)
* section[comorbidity].code.coding.code = #78923-0 (exactly)
* section[comorbidity].code.coding.display = "併存疾患情報セクション"
* section[comorbidity].entry 1..
* section[comorbidity].entry only Reference(JP_Condition_CCS)
* section[comorbidity].entry ^short = "併存疾患情報の構造化情報"
* section[comorbidity].entry ^definition = "併存疾患情報の構造化情報"
* section[comorbidity].emptyReason ..1

// 冠危険因子
* section[riskFactors] ^short = "冠危険因子セクション"
* section[riskFactors] ^definition = "冠危険因子セクション"
* section[riskFactors].title = "冠危険因子" (exactly)
* section[riskFactors].code.coding.code = #78940-4 (exactly)
* section[riskFactors].code.coding.display = "冠危険因子セクション"
* section[riskFactors].entry 1..
* section[riskFactors].entry only Reference(JP_Condition_CCS)
* section[riskFactors].entry ^short = "冠危険因子の構造化情報"
* section[riskFactors].entry ^definition = "冠危険因子の構造化情報"
* section[riskFactors].emptyReason ..1

// 循環器疾患既往歴
* section[history] ^short = "循環器疾患既往歴セクション"
* section[history] ^definition = "循環器疾患既往歴セクション"
* section[history].title = "循環器疾患既往歴" (exactly)
* section[history].code.coding.code = #78941-2 (exactly)
* section[history].code.coding.display = "循環器疾患既往歴セクション"
* section[history].entry 1..
* section[history].entry only Reference(JP_Condition_CCS)
* section[history].entry ^short = "循環器疾患既往歴の構造化情報"
* section[history].entry ^definition = "循環器疾患既往歴の構造化情報"
* section[history].emptyReason ..1

// 過去の血行再建
* section[revascularization] ^short = "過去の血行再建セクション"
* section[revascularization] ^definition = "過去の血行再建セクション"
* section[revascularization].title = "過去の血行再建" (exactly)
* section[revascularization].code.coding.code = #80286-8 (exactly)
* section[revascularization].code.coding.display = "過去の血行再建セクション"
* section[revascularization].entry 1..
* section[revascularization].entry only Reference(JP_Observation_SEAMAT)
* section[revascularization].entry ^short = "過去の血行再建の構造化情報"
* section[revascularization].entry ^definition = "過去の血行再建の構造化情報"
* section[revascularization].emptyReason ..1

// 術前情報
* section[preoperative] ^short = "術前情報セクション"
* section[preoperative] ^definition = "術前情報セクション"
* section[preoperative].title = "術前情報" (exactly)
* section[preoperative].code.coding.code = #80528-3 (exactly)
* section[preoperative].code.coding.display = "術前情報セクション"
* section[preoperative].entry 1..
* section[preoperative].entry only Reference(JP_Observation_SEAMAT)
* section[preoperative].entry ^short = "術前情報の構造化情報"
* section[preoperative].entry ^definition = "術前情報の構造化情報"
* section[preoperative].emptyReason ..1

// 検査情報
* section[studyInfo] ^short = "検査情報セクション"
* section[studyInfo] ^definition = "検査情報セクション"
* section[studyInfo].title = "検査情報" (exactly)
* section[studyInfo].code.coding.code = #80190-2 (exactly)
* section[studyInfo].code.coding.display = "検査情報セクション"
* section[studyInfo].entry 1..
* section[studyInfo].entry only Reference(JP_Observation_SEAMAT)
* section[studyInfo].entry ^short = "検査情報の構造化情報"
* section[studyInfo].entry ^definition = "検査情報の構造化情報"
* section[studyInfo].emptyReason ..1

// 検査内容
* section[studyCont] ^short = "検査内容セクション"
* section[studyCont] ^definition = "検査内容セクション"
* section[studyCont].title = "検査内容" (exactly)
* section[studyCont].code.coding.code = #78949-5 (exactly)
* section[studyCont].code.coding.display = "検査内容セクション"
* section[studyCont].entry 1..
* section[studyCont].entry only Reference(JP_Observation_SEAMAT)
* section[studyCont].entry ^short = "検査内容の構造化情報"
* section[studyCont].entry ^definition = "検査内容の構造化情報"
* section[studyCont].emptyReason ..1

// 補助循環治療
* section[assisted] ^short = "補助循環治療セクション"
* section[assisted] ^definition = "補助循環治療セクション"
* section[assisted].title = "補助循環治療" (exactly)
* section[assisted].code.coding.code = #78933-9 (exactly)
* section[assisted].code.coding.display = "補助循環治療セクション"
* section[assisted].entry 1..
* section[assisted].entry only Reference(JP_Observation_SEAMAT)
* section[assisted].entry ^short = "補助循環治療の構造化情報"
* section[assisted].entry ^definition = "補助循環治療の構造化情報"
* section[assisted].emptyReason ..1

// カテーテル
* section[catheter] ^short = "カテーテルセクション"
* section[catheter] ^definition = "カテーテルセクション"
* section[catheter].title = "カテーテル" (exactly)
* section[catheter].code.coding.code = #78942-0 (exactly)
* section[catheter].code.coding.display = "カテーテルセクション"
* section[catheter].entry 1..
* section[catheter].entry only Reference(JP_Observation_SEAMAT)
* section[catheter].entry ^short = "カテーテルの構造化情報"
* section[catheter].entry ^definition = "カテーテルの構造化情報"
* section[catheter].emptyReason ..1

// 冠動脈病変
* section[segment] ^short = "冠動脈病変セクション"
* section[segment] ^definition = "冠動脈病変セクション"
* section[segment].title = "冠動脈病変" (exactly)
* section[segment].code.coding.code = #78895-0 (exactly)
* section[segment].code.coding.display = "冠動脈病変セクション"
* section[segment].entry 1..
* section[segment].entry only Reference(JP_Observation_SEAMAT)
* section[segment].entry ^short = "冠動脈病変の構造化情報"
* section[segment].entry ^definition = "冠動脈病変の構造化情報"
* section[segment].emptyReason ..1

// 冠動脈病変［拡張項目］
* section[segmentEx] ^short = "冠動脈病変［拡張項目］セクション"
* section[segmentEx] ^definition = "冠動脈病変［拡張項目］セクション"
* section[segmentEx].title = "冠動脈病変［拡張項目］" (exactly)
* section[segmentEx].code.coding.code = #80192-8 (exactly)
* section[segmentEx].code.coding.display = "冠動脈病変［拡張項目］セクション"
* section[segmentEx].entry 1..
* section[segmentEx].entry only Reference(JP_Observation_SEAMAT)
* section[segmentEx].entry ^short = "冠動脈病変［拡張項目］の構造化情報"
* section[segmentEx].entry ^definition = "冠動脈病変［拡張項目］の構造化情報"
* section[segmentEx].emptyReason ..1

// LVG
* section[lvg] ^short = "LVGセクション"
* section[lvg] ^definition = "LVGセクション"
* section[lvg].title = "LVG" (exactly)
* section[lvg].code.coding.code = #78950-3 (exactly)
* section[lvg].code.coding.display = "LVGセクション"
* section[lvg].entry 1..
* section[lvg].entry only Reference(JP_Observation_SEAMAT)
* section[lvg].entry ^short = "LVGの構造化情報"
* section[lvg].entry ^definition = "LVGの構造化情報"
* section[lvg].emptyReason ..1

// 心内圧データ
* section[bloodPressure] ^short = "心内圧データセクション"
* section[bloodPressure] ^definition = "心内圧データセクション"
* section[bloodPressure].title = "心内圧データ" (exactly)
* section[bloodPressure].code.coding.code = #8357-6 (exactly)
* section[bloodPressure].code.coding.display = "心内圧データセクション"
* section[bloodPressure].entry 1..
* section[bloodPressure].entry only Reference(JP_Observation_SEAMAT)
* section[bloodPressure].entry ^short = "心内圧データの構造化情報"
* section[bloodPressure].entry ^definition = "心内圧データの構造化情報"
* section[bloodPressure].emptyReason ..1

// スパズム負荷試験
* section[spasm] ^short = "スパズム負荷試験セクション"
* section[spasm] ^definition = "スパズム負荷試験セクション"
* section[spasm].title = "スパズム負荷試験" (exactly)
* section[spasm].code.coding.code = #80191-0 (exactly)
* section[spasm].code.coding.display = "スパズム負荷試験セクション"
* section[spasm].entry 1..
* section[spasm].entry only Reference(JP_Observation_SEAMAT)
* section[spasm].entry ^short = "スパズム負荷試験の構造化情報"
* section[spasm].entry ^definition = "スパズム負荷試験の構造化情報"
* section[spasm].emptyReason ..1

// PCI合併症
* section[complication] ^short = "PCI合併症セクション"
* section[complication] ^definition = "PCI合併症セクション"
* section[complication].title = "PCI合併症" (exactly)
* section[complication].code.coding.code = #78943-8 (exactly)
* section[complication].code.coding.display = "PCI合併症セクション"
* section[complication].entry 1..
* section[complication].entry only Reference(JP_Condition_CCS)
* section[complication].entry ^short = "PCI合併症の構造化情報"
* section[complication].entry ^definition = "PCI合併症の構造化情報"
* section[complication].emptyReason ..1

// PCI処置
* section[procedure] ^short = "PCI処置セクション"
* section[procedure] ^definition = "PCI処置セクション"
* section[procedure].title = "PCI処置" (exactly)
* section[procedure].code.coding.code = #78914-9 (exactly)
* section[procedure].code.coding.display = "PCI処置セクション"
* section[procedure].entry 1..
* section[procedure].entry only Reference(JP_Procedure_PCI)
* section[procedure].entry ^short = "PCI処置の構造化情報"
* section[procedure].entry ^definition = "PCI処置の構造化情報"
* section[procedure].emptyReason ..1

// PCI処置［拡張項目］
* section[procedureEx] ^short = "PCI処置［拡張項目］セクション"
* section[procedureEx] ^definition = "PCI処置［拡張項目］セクション"
* section[procedureEx].title = "PCI処置［拡張項目］" (exactly)
* section[procedureEx].code.coding.code = #80527-5 (exactly)
* section[procedureEx].code.coding.display = "PCI処置［拡張項目］セクション"
* section[procedureEx].entry 1..
* section[procedureEx].entry only Reference(JP_Observation_SEAMAT)
* section[procedureEx].entry ^short = "PCI処置［拡張項目］の構造化情報"
* section[procedureEx].entry ^definition = "PCI処置［拡張項目］の構造化情報"
* section[procedureEx].emptyReason ..1

//  PCI処置詳細［拡張項目］
* section[procDetailEx] ^short = " PCI処置詳細［拡張項目］セクション"
* section[procDetailEx] ^definition = " PCI処置詳細［拡張項目］セクション"
* section[procDetailEx].title = " PCI処置詳細［拡張項目］" (exactly)
* section[procDetailEx].code.coding.code = #80731-3 (exactly)
* section[procDetailEx].code.coding.display = " PCI処置詳細［拡張項目］セクション"
* section[procDetailEx].entry 1..
* section[procDetailEx].entry only Reference(JP_Observation_SEAMAT)
* section[procDetailEx].entry ^short = " PCI処置詳細［拡張項目］の構造化情報"
* section[procDetailEx].entry ^definition = "PCI処置詳細［拡張項目］の構造化情報"
* section[procDetailEx].emptyReason ..1

// PCI処置詳細ステント基本情報［拡張項目］
* section[procDetailStentEx] ^short = " PCI処置詳細ステント基本情報［拡張項目］セクション"
* section[procDetailStentEx] ^definition = " PCI処置詳細ステント基本情報［拡張項目］セクション"
* section[procDetailStentEx].title = " PCI処置詳細ステント基本情報［拡張項目］" (exactly)
* section[procDetailStentEx].code.coding.code = #78939-6 (exactly)
* section[procDetailStentEx].code.coding.display = " PCI処置詳細ステント基本情報［拡張項目］セクション"
* section[procDetailStentEx].entry 1..
* section[procDetailStentEx].entry only Reference(JP_Observation_SEAMAT)
* section[procDetailStentEx].entry ^short = " PCI処置詳細ステント基本情報［拡張項目］の構造化情報"
* section[procDetailStentEx].entry ^definition = "PCI処置詳細ステント基本情報［拡張項目］の構造化情報"
* section[procDetailStentEx].emptyReason ..1
