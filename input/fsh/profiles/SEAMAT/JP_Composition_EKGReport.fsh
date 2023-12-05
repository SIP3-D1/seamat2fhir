// ==============================
//   Profile 定義
// ==============================
Profile: JP_Composition_EKGReport
Parent: Composition
Id: JP-Composition-ekgreport
Description:  "心電図検査レポート情報のリソース構成情報と文書日付に関するCompositionの派生プロファイル"
* ^url = $JP_Composition_EKGReport
* ^status = #active
* ^date = "2023-11-12"
* meta.lastUpdated 1.. MS
* meta.profile 1.. MS
//* meta.profile = $JP_Composition_EKGReport

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains $composition-clinicaldocument-versionNumber named version 0..1
* extension[version] ^short = "文書バージョンを表す拡張"
* extension[version] 1..1 MS
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
and authoringOrganization 1..1 MS
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
* event.code 1..1 MS
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
* section ^slicing.discriminator.path = "code.coding.system"
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding.code"
* section ^slicing.rules = #open
* section contains
        loinc 0..* MS // LOINC
    and loinc/additional 0..1 MS    // 患者付帯情報
    and loinc/history 0..1 MS // 既往歴
    and loinc/subjective 0..1 MS // 自覚症状
	and loinc/usedDrug 0..1 MS  // 検査時使用薬
    and loinc/examDescription 0..1 MS  //  検査記述
    and loinc/ekgComment 0..1    MS  //  心電図コメント
    and loinc/measurement 0..1 MS // 計測値（生理検査）
    and loinc/analysis 0..1 MS // 解析結果（生理検査）
    and loinc/ekgFinding 0..1 MS // 超音波所見
    and loinc/examFinding 0..1 MS // 検査所見
    and loinc/doctorFinding 0..1 MS // 医師所見
    and loinc/external 0..1 MS // 外部参照
    and jlac10 0..* MS // JLAC10
    and jj1017 0..* MS // JJ1017

* section[loinc].title 1.. MS
* section[loinc].title ^short = "セクションタイトル"
* section[loinc].title ^definition = "セクションタイトル。固定値。"
* section[loinc].code 1.. MS
* section[loinc].code ^short = "セクション区分コード"
* section[loinc].code ^definition = "セクション区分コード"
* section[loinc].code.coding 1..1 MS
* section[loinc].code.coding from $JP_Composition_EKGReport_SectionCode_VS (required)
* section[loinc].code.coding.system 1.. MS
* section[loinc].code.coding.system = $JP_Composition_SEAMAT_SectionCode_CS (exactly)
* section[loinc].code.coding.system ^short = "セクション区分コードのコード体系"
* section[loinc].code.coding.system ^definition = "セクション区分コードのコード体系を識別するURI。固定値。"
* section[loinc].code.coding.code 1.. MS
* section[loinc].code.coding.code ^short = "セクション区分のコード値"
* section[loinc].code.coding.code ^definition = "セクション区分のコード値。\r\n固定値。"
* section[loinc].code.coding.display ^short = "セクション区分コードの表示名"
* section[loinc].code.coding.display ^definition = "セクション区分コードの表示名。"
* section[loinc].code.coding.display MS
* section[loinc].code.coding.userSelected ..0
* section[loinc].text ^short = "このセクションに含められるすべてのテキスト（叙述的記述）表現"
* section[loinc].text ^definition = "本セクションの内容をテキストで表現した文字列。内容を省略しても構わない。 このデータは人がこのセクションの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。"
* section[loinc].text MS
* section[loinc].text.status MS
* section[loinc].text.status = #additional (exactly)
* section[loinc].text.status ^short = "セクションの内容作成状態コード"
* section[loinc].text.status ^definition = "generated | extensions | additional | empty　から　\"additional\" の固定値。このセクションに含められるすべてのentry要素による情報に加えて、それらで表現し尽くせていない情報も含めた完全な叙述表現であることを示す。"
* section[loinc].text.div ^short = "xhtml簡略形式に従った叙述記述データ"
* section[loinc].text.div ^definition = "本セクションの内容を xhtml 形式のテキストで表現した文字列。内容を省略しても構わない。 \r\nこのデータは人がこのセクションの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。\r\nテキストは構造化された情報から自動的にシステムが生成したものとし、それ以上に情報を追加してはならない。"
* section[loinc].mode ..0
* section[loinc].orderedBy ..0

// 患者付帯情報
* section[loinc/additional] ^short = "患者付帯情報セクション"
* section[loinc/additional] ^definition = "患者付帯情報セクション"
* section[loinc/additional].title = "患者付帯情報" (exactly)
* section[loinc/additional].code.coding.code = #52460-3 (exactly)
* section[loinc/additional].code.coding.display = "患者付帯情報セクション"
* section[loinc/additional].entry 1..
* section[loinc/additional].entry only Reference(JP_Observation_SEAMAT)
* section[loinc/additional].entry ^short = "患者付帯情報の構造化情報"
* section[loinc/additional].entry ^definition = "患者付帯情報の構造化情報"
* section[loinc/additional].emptyReason ..1

//　検査項目(JLAC10)
* section[jlac10] ^short = "検査項目セクション(JLAC10)"
* section[jlac10] ^definition = "検査項目セクション(JLAC10)"
* section[jlac10].title 1.. MS
* section[jlac10].title = "検査項目" (exactly)
* section[jlac10].title ^short = "セクションタイトル"
* section[jlac10].title ^definition = "セクションタイトル。固定値。"
* section[jlac10].code 1.. MS
* section[jlac10].code ^short = "セクション区分コード"
* section[jlac10].code ^definition = "セクション区分コード"
* section[jlac10].code.coding 1..1 MS
* section[jlac10].code.coding.system 1.. MS
* section[jlac10].code.coding.system = $JLAC10 (exactly)
* section[jlac10].code.coding.system ^short = "セクション区分コードのコード体系"
* section[jlac10].code.coding.system ^definition = "セクション区分コードのコード体系を識別するURI。固定値。"
* section[jlac10].code.coding.code 1.. MS
* section[jlac10].code.coding.code ^short = "セクション区分のコード値"
* section[jlac10].code.coding.code ^definition = "セクション区分のコード値。\r\n固定値。"
* section[jlac10].code.coding.display = "検査項目セクション"
* section[jlac10].code.coding.display ^short = "セクション区分コードの表示名"
* section[jlac10].code.coding.display ^definition = "セクション区分コードの表示名。"
* section[jlac10].code.coding.display MS
* section[jlac10].code.coding.userSelected ..0
* section[jlac10].code.text ..0
* section[jlac10].text ^short = "このセクションに含められるすべてのテキスト（叙述的記述）表現"
* section[jlac10].text ^definition = "本セクションの内容をテキストで表現した文字列。内容を省略しても構わない。 このデータは人がこのセクションの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。"
* section[jlac10].text MS
* section[jlac10].text.status MS
* section[jlac10].text.status = #additional (exactly)
* section[jlac10].text.status ^short = "セクションの内容作成状態コード"
* section[jlac10].text.status ^definition = "generated | extensions | additional | empty　から　\"additional\" の固定値。このセクションに含められるすべてのentry要素による情報に加えて、それらで表現し尽くせていない情報も含めた完全な叙述表現であることを示す。"
* section[jlac10].text.div ^short = "xhtml簡略形式に従った叙述記述データ"
* section[jlac10].text.div ^definition = "本セクションの内容を xhtml 形式のテキストで表現した文字列。内容を省略しても構わない。 \r\nこのデータは人がこのセクションの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。\r\nテキストは構造化された情報から自動的にシステムが生成したものとし、それ以上に情報を追加してはならない。"
* section[jlac10].mode ..0
* section[jlac10].orderedBy ..0
* section[jlac10].entry ..0

//　検査項目(JJ1017)
* section[jj1017] ^short = "検査項目セクション(JJ1017)"
* section[jj1017] ^definition = "検査項目セクション(JJ1017)"
* section[jj1017].title 1.. MS
* section[jj1017].title = "検査項目" (exactly)
* section[jj1017].title ^short = "セクションタイトル"
* section[jj1017].title ^definition = "セクションタイトル。固定値。"
* section[jj1017].code 1.. MS
* section[jj1017].code ^short = "セクション区分コード"
* section[jj1017].code ^definition = "セクション区分コード"
* section[jj1017].code.coding 1..1 MS
* section[jj1017].code.coding.system 1.. MS
* section[jj1017].code.coding.system = $JJ1017 (exactly)
* section[jj1017].code.coding.system ^short = "セクション区分コードのコード体系"
* section[jj1017].code.coding.system ^definition = "セクション区分コードのコード体系を識別するURI。固定値。"
* section[jj1017].code.coding.code 1.. MS
* section[jj1017].code.coding.code ^short = "セクション区分のコード値"
* section[jj1017].code.coding.code ^definition = "セクション区分のコード値。\r\n固定値。"
* section[jj1017].code.coding.display = "検査項目セクション"
* section[jj1017].code.coding.display ^short = "セクション区分コードの表示名"
* section[jj1017].code.coding.display ^definition = "セクション区分コードの表示名。"
* section[jj1017].code.coding.display MS
* section[jj1017].code.coding.userSelected ..0
* section[jj1017].code.text ..0
* section[jj1017].text ^short = "このセクションに含められるすべてのテキスト（叙述的記述）表現"
* section[jj1017].text ^definition = "本セクションの内容をテキストで表現した文字列。内容を省略しても構わない。 このデータは人がこのセクションの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。"
* section[jj1017].text MS
* section[jj1017].text.status MS
* section[jj1017].text.status = #additional (exactly)
* section[jj1017].text.status ^short = "セクションの内容作成状態コード"
* section[jj1017].text.status ^definition = "generated | extensions | additional | empty　から　\"additional\" の固定値。このセクションに含められるすべてのentry要素による情報に加えて、それらで表現し尽くせていない情報も含めた完全な叙述表現であることを示す。"
* section[jj1017].text.div ^short = "xhtml簡略形式に従った叙述記述データ"
* section[jj1017].text.div ^definition = "本セクションの内容を xhtml 形式のテキストで表現した文字列。内容を省略しても構わない。 \r\nこのデータは人がこのセクションの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。\r\nテキストは構造化された情報から自動的にシステムが生成したものとし、それ以上に情報を追加してはならない。"
* section[jj1017].mode ..0
* section[jj1017].orderedBy ..0
* section[jj1017].entry ..0

//　既往歴
* section[loinc/history] ^short = "既往歴セクション"
* section[loinc/history] ^definition = "既往歴セクション"
* section[loinc/history].title = "既往歴" (exactly)
* section[loinc/history].code.coding.code = #11348-0 (exactly)
* section[loinc/history].code.coding.display = "既往歴セクション"
* section[loinc/history].entry ..0

//　自覚症状
* section[loinc/subjective] ^short = "自覚症状セクション"
* section[loinc/subjective] ^definition = "自覚症状セクション"
* section[loinc/subjective].title = "自覚症状" (exactly)
* section[loinc/subjective].code.coding.code = #61150-9 (exactly)
* section[loinc/subjective].code.coding.display = "自覚症状セクション"
* section[loinc/subjective].entry ..0

//　検査時使用薬
* section[loinc/usedDrug] ^short = "検査時使用薬セクション"
* section[loinc/usedDrug] ^definition = "検査時使用薬セクション"
* section[loinc/usedDrug].title = "検査時使用薬" (exactly)
* section[loinc/usedDrug].code.coding.code = #15334-6 (exactly)
* section[loinc/usedDrug].code.coding.display = "検査時使用薬セクション"
* section[loinc/usedDrug].entry ..0

//　検査記述
* section[loinc/examDescription] ^short = "検査記述セクション"
* section[loinc/examDescription] ^definition = "検査記述セクション"
* section[loinc/examDescription].title = "検査記述" (exactly)
* section[loinc/examDescription].code.coding.code = #70004-7 (exactly)
* section[loinc/examDescription].code.coding.display = "検査記述セクション"
* section[loinc/examDescription].entry ..0

//　心電図コメント
* section[loinc/ekgComment] ^short = "心電図コメントセクション"
* section[loinc/ekgComment] ^definition = "心電図コメントセクション"
* section[loinc/ekgComment].title = "心電図コメント" (exactly)
* section[loinc/ekgComment].code.coding.code = #11524-6 (exactly)
* section[loinc/ekgComment].code.coding.display = "心電図コメントセクション"
* section[loinc/ekgComment].entry ..0

// 計測値（生理検査）
* section[loinc/measurement] ^short = "計測値（生理検査）セクション"
* section[loinc/measurement] ^definition = "計測値（生理検査）セクション"
* section[loinc/measurement].title = "計測値" (exactly)
* section[loinc/measurement].code.coding.code = #29273-0 (exactly)
* section[loinc/measurement].code.coding.display = "計測値セクション"
* section[loinc/measurement].entry 1..
* section[loinc/measurement].entry ^short = "計測値（生理検査）の構造化情報"
* section[loinc/measurement].entry ^definition = "計測値（生理検査）の構造化情報"
* section[loinc/measurement].entry only Reference(JP_Observation_SEAMAT)
* section[loinc/measurement].emptyReason ..1

// 解析結果（生理検査）
* section[loinc/analysis] ^short = "解析結果（生理検査）セクション"
* section[loinc/analysis] ^definition = "解析結果（生理検査）セクション"
* section[loinc/analysis].title = "解析結果" (exactly)
* section[loinc/analysis].code.coding.code = #64110-0 (exactly)
* section[loinc/analysis].code.coding.display = "解析結果セクション"
* section[loinc/analysis].entry 1..
* section[loinc/analysis].entry ^short = "解析結果（生理検査）の構造化情報"
* section[loinc/analysis].entry ^definition = "解析結果（生理検査）の構造化情報"
* section[loinc/analysis].entry only Reference(JP_Observation_SEAMAT)
* section[loinc/analysis].emptyReason ..1

//　超音波所見
* section[loinc/ekgFinding] ^short = "超音波所見セクション"
* section[loinc/ekgFinding] ^definition = "超音波所見セクション"
* section[loinc/ekgFinding].title = "超音波所見" (exactly)
* section[loinc/ekgFinding].code.coding.code = #12131-9 (exactly)
* section[loinc/ekgFinding].code.coding.display = "超音波所見セクション"
* section[loinc/ekgFinding].entry ..0

//　検査所見
* section[loinc/examFinding] ^short = "検査所見セクション"
* section[loinc/examFinding] ^definition = "検査所見セクション"
* section[loinc/examFinding].title = "検査所見" (exactly)
* section[loinc/examFinding].code.coding.code = #47045-0 (exactly)
* section[loinc/examFinding].code.coding.display = "検査所見セクション"
* section[loinc/examFinding].entry ..0

//　医師所見
* section[loinc/doctorFinding] ^short = "医師所見セクション"
* section[loinc/doctorFinding] ^definition = "医師所見セクション"
* section[loinc/doctorFinding].title = "医師所見" (exactly)
* section[loinc/doctorFinding].code.coding.code = #29308-4 (exactly)
* section[loinc/doctorFinding].code.coding.display = "医師所見セクション"
* section[loinc/doctorFinding].entry ..0

// 外部参照
* section[loinc/external] ^short = "外部参照セクション"
* section[loinc/external] ^definition = "外部参照セクション"
* section[loinc/external].title = "外部参照" (exactly)
* section[loinc/external].code.coding.code = #78239-1 (exactly)
* section[loinc/external].code.coding.display = "外部参照セクション"
* section[loinc/external].entry 1..
* section[loinc/external].entry ^short = "外部参照の構造化情報"
* section[loinc/external].entry ^definition = "外部参照の構造化情報"
* section[loinc/external].entry only Reference(JP_DocumentReference_SEAMAT or JP_Binary_SEAMAT)
* section[loinc/external].emptyReason ..1
