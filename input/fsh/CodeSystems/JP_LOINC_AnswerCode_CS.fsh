CodeSystem: JP_LOINC_AnswerCode_CS
Id: jp-loinc-answer-code-cs
Title: "LOINC Answer Code CodeSystem"
Description: "SEAMATで使用するLOINCアンサーコードのコードシステム"
* ^url = $loinc-answer-code
* ^status = #active
* ^experimental = false
* ^date = "2024-06-15"
* ^caseSensitive = true
* ^content = #fragment
* ^copyright = "Copyright SIP D1 SEAMAT2FHIR-WG   
This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"

// Condition.code
// SEAMAT心カテレポートPCI合併症値セット
* #LA20591-6	"Died/Expired"
* #LA14274-7	"Myocardial infarction"
* #LA24492-3	"Cardiac tamponade"
* #LA17687-7	"Cardiogenic shock"
* #LA24493-1	"Stent thrombosis (onset prior to discharge)"
* #LA24494-9	"Access site hemorrhage requiring blood transfusion"
* #LA24495-6	"Non-access site hemorrhage requiring blood transfusion"
* #LA24496-4	"Emergency surgery"
* #LA46-8	"Other"

// Device.type
* #LA26041-6	"バルーン"
* #LA26042-4	"薬剤溶出バルーン"
* #LA26043-2	"金属ステント"
* #LA26044-0	"薬剤溶出ステント"
* #LA26046-5	"ローターブレーター"
* #LA26045-7	"生体吸収性スキャフォールﾄﾞ"
* #LA28659-3	"血栓吸引"
* #LA28661-9	"DCA"
* #LA28660-1	"遠位部保護"
//* #LA46-8	"その他、指定する"

// Observatin.valueCodeableConcept (PCI Stenosis)
* #LA15243-1	"0%"
* #LA24352-9	"1-24%"
* #LA24431-1	"25-49%"
* #LA15328-0	"50-69%"
* #LA15329-8	"70-89%"
* #LA24351-1	"90-99%"
* #LA15253-0	"100%"

// Observatin.valueCodeableConcept (TIMI Grade)
* #LA26047-3	"TIMI 0"
* #LA26048-1	"TIMI 1"
* #LA26049-9	"TIMI 2"
* #LA26050-7	"TIMI 3"

// Procedure.bodySite
* #LA24460-0	"RCA1"
* #LA24461-8	"RCA2"
* #LA24462-6	"RCA3"
* #LA24473-3	"RCA4PD"
* #LA24474-1	"RCA4AV"
* #LA24463-4	"LMT5"
* #LA24472-5	"LAD6"
* #LA24471-7	"LAD7"
* #LA24470-9	"LAD8"
* #LA24467-5	"LAD9"
* #LA24468-3	"LAD10"
* #LA24459-2	"LCX11"
* #LA24469-1	"LCX12"
* #LA28662-7	"LCX13"
* #LA24466-7	"LCX14"
* #LA28663-5	"LCX15"
//* #LA46-8	"OTHER"

// Procedure.outcome
* #LA32-8	"失敗"
* #LA33-6	"成功"
