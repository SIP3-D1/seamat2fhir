ValueSet: JP_Condition_CATHCode_VS
Id: jp-condition-cath-code-vs
Title: "SEAMAT CATH Code ValueSet"
Description: "SEAMAT心カテレポート疾患コード値セット"
* ^url = $JP_Condition_CATHCode_VS
* ^status = #active
* ^experimental = false
* ^date = "2024-06-14"
* ^copyright = "Copyright Copyright SIP D1 SEAMAT2FHIR-WG"

// SEAMAT心カテレポート循環器疾患既往歴値セット
* $loinc#78925-5    "脳梗塞/脳出血"
* $loinc#66624-8    "心筋梗塞"
* $loinc#45641-8    "心不全"

// SEAMAT心カテレポート並存疾患種別値セット
* $loinc#45678-0    "腎不全"
* $loinc#45842-2    "維持透析"
* $loinc#45670-7    "慢性肺疾患（COPD）"
* $loinc#58264-3    "末梢血管障害（AAA/PAD）"
* $loinc#78924-8    "高尿酸血症"

// SEAMAT心カテレポート冠危険因子値セット
* $loinc#66678-4    "糖尿病"
* $loinc#45643-4    "高血圧"
* $loinc#88655-6    "高脂血症"
* $loinc#80985-5    "家族歴"
* $loinc#64234-8    "喫煙"
* $loinc#78948-7    "BrinkmanIndex"

// SEAMAT心カテレポートPCI合併症値セット
* $loinc-answer-code#LA20591-6	"Died/Expired"
* $loinc-answer-code#LA14274-7	"Myocardial infarction"
* $loinc-answer-code#LA24492-3	"Cardiac tamponade"
* $loinc-answer-code#LA17687-7	"Cardiogenic shock"
* $loinc-answer-code#LA24493-1	"Stent thrombosis (onset prior to discharge)"
* $loinc-answer-code#LA24494-9	"Access site hemorrhage requiring blood transfusion"
* $loinc-answer-code#LA24495-6	"Non-access site hemorrhage requiring blood transfusion"
* $loinc-answer-code#LA24496-4	"Emergency surgery"
* $loinc-answer-code#LA46-8	"Other"
