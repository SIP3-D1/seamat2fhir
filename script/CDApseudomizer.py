from lxml import etree
import sys

# ダミーデータの設定
dummy_data = {
    # keyword: [element_xpath, targetType, replaceType,value_relativeXpath, replace_sting]
    #  targetType: text  text()要素を置き換える、　attribute value_relativeXpathで指定される属性値を置き換える
    #  replaceType: fixed 固定値replace_stingに置きかえる、incremental replace_stingの末尾に2桁数値を1ずつ増やして置き換える
    #  attribute value_relativeXpath: 属性値を置き換えるときその属性名を示す、テキストを置きかえるときは''とする。
    # ルートOID
    # 患者ID ルート ：
    'patient_OID_root': [
        '//hl7:*[starts-with(@root,"1.2.392.200250.3.3.1.")]',
        'attribute',
        'fixed',
        'root',
        '1.2.392.200250.3.3.1.10111234567'], 
    'patient_OID_rootExtension': [
        '//hl7:*[starts-with(@root,"1.2.392.200250.3.3.1.")]',
        'attribute',
        'fixed',
        'extension',
        '0123456789'],   # 患者ID＝0123456789
    # 利用者ID ルート
    'user_OID_root': [
        '//hl7:*[starts-with(@root,"1.2.392.200250.3.3.2")]',
        'attribute',
        'fixed',
        'root',
        '1.2.392.200250.3.3.2.10111234567'],
    'user_OID_rootExtension': [
        '//hl7:*[starts-with(@root,"1.2.392.200250.3.3.2")]',
        'attribute',
        'incremental',
        'extension',
        '987600'],   # 利用者ID＝987600
    # 施設ID ルート 
    'organization_OID_root': [
        '//hl7:*[starts-with(@root,"1.2.392.200250.2.2.1")]',
        'attribute',
        'fixed',
        'root',
        '1.2.392.200250.2.2.1.10111234567'],
    'organization_OID_rootExtension': [
        '//hl7:*[starts-with(@root,"1.2.392.200250.2.2.1")]',
        'attribute',
        'fixed',
        'extension',
        '10111234567'],   # 機関ID＝0123456789
    #患者氏名 or 保護者(フルネーム)
    'patient_IDE_name': [
        '//hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:name[@use="IDE" and not(hl7:family)] | //hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:guardian/hl7:guardianPerson/hl7:name[@use="IDE" and not(hl7:family)] | //hl7:assignedPerson/hl7:name[@use="IDE" and not(hl7:family)] | //hl7:informationRecipient/hl7:name[@use="IDE" and not(hl7:family)]',
        'text',
        'fixed',
        '',
        '漢字姓 名前ダミー'],
    'patient_SYL_name': [
        '//hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:name[@use="SYL" and not(hl7:family)]| //hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:guardian/hl7:guardianPerson/hl7:name[@use="SYL" and not(hl7:family)] | //hl7:assignedPerson/hl7:name[@use="SYL" and not(hl7:family)]| //hl7:informationRecipient/hl7:name[@use="SYL" and not(hl7:family)]',
        'text',
        'fixed',
        '',
        'カンジセイ ナマエ'],
    'patient_ABC_name': [
        '//hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:name[(@use="ABC" or not(@*))  and not(hl7:family)] | //hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:guardian/hl7:guardianPerson/hl7:name[(@use="ABC" or not(@*))  and not(hl7:family)]  | //hl7:assignedPerson/hl7:name[(@use="ABC" or not(@*))  and not(hl7:family)] | //hl7:informationRecipient/hl7:name[(@use="ABC" or not(@*))  and not(hl7:family)]',
        'text',
        'fixed',
        '',
        'FamilyName GivenName'],
    #氏名(family)
    'patient_IDE_nameFamily': [
        '//hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:name[@use="IDE"]/hl7:family | //hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:guardian/hl7:guardianPerson/hl7:name[@use="IDE"]/hl7:family | //hl7:assignedPerson/hl7:name[@use="IDE"]/hl7:family  | //hl7:informationRecipient/hl7:name[@use="IDE"]/hl7:family',
        'text',
        'fixed',
        '',
        '漢字姓'],
    'patient_SYL_nameFamily': [
        '//hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:name[@use="SYL"]/hl7:family | //hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:guardian/hl7:guardianPerson/hl7:name[@use="SYL"]/hl7:family | //hl7:assignedPerson/hl7:name[@use="SYL"]/hl7:family | //hl7:informationRecipient/hl7:name[@use="SYL"]/hl7:family',
        'text',
        'fixed',
        '',
        'カンジセイ'],
    'patient_ABC_nameFamily': [
        '//hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:name[@use="ABC" or not(@*)]/hl7:family | //hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:guardian/hl7:guardianPerson/hl7:name[@use="ABC" or not(@*)]/hl7:family   | //hl7:assignedPerson/hl7:name[@use="ABC" or not(@*)]/hl7:family| //hl7:informationRecipient/hl7:name[@use="ABC" or not(@*)]/hl7:family',
        'text',
        'fixed',
        '',
        'FamilyName'],
    #氏名(given)
    'patient_IDE_nameGiven': [
        '//hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:name[@use="IDE"]/hl7:given | //hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:guardian/hl7:guardianPerson/hl7:name[@use="IDE"]/hl7:given | //hl7:assignedPerson/hl7:name[@use="IDE"]/hl7:given | //hl7:informationRecipient/hl7:name[@use="IDE"]/hl7:given',
        'text',
        'fixed',
        '',
        '名前ダミー'],
    'patient_SYL_nameGiven': [
        '//hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:name[@use="SYL"]/hl7:given | //hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:guardian/hl7:guardianPerson/hl7:name[@use="SYL"]/hl7:given| //hl7:assignedPerson/hl7:name[@use="SYL"]/hl7:given | //hl7:informationRecipient/hl7:name[@use="SYL"]/hl7:given',
        'text',
        'fixed',
        '',
        'ナマエダミー'],
    'patient_ABC_nameGiven': [
        '//hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:name[@use="ABC" or not(@*)]/hl7:given | //hl7:recordTarget/hl7:patientRole/hl7:patient/hl7:guardian/hl7:guardianPerson/hl7:name[@use="ABC" or not(@*)]/hl7:given| //hl7:assignedPerson/hl7:name[@use="ABC" or not(@*)]/hl7:given | //hl7:informationRecipient/hl7:name[@use="ABC" or not(@*)]/hl7:given',
        'text',
        'fixed',
        '',
        'GivenName'],
    # 生誕場所
    'birthPlace': [
        '//hl7:birthplace/hl7:place/hl7:name',
        'text',
        'fixed',
        '',
        '生誕場所ダミー'],    
    # 住所
    'address': [
        '//hl7:addr | //hl7:addr/hl7:streetAddressLine | //hl7:addr/hl7:city | //hl7:addr/hl7:state',
        'text',
        'fixed',
        '',
        '住所ダミー'],
    'addressPostalCode': [
        '//hl7:addr/hl7:postalCode',
        'text',
        'fixed',
        '',
        '101-1100'],    
    # 電話番号
    'telecom': [
        '//hl7:telecom[@value]',
        'attribute',
        'fixed',
        'value',
        '03-1111-2222'],        
    # 文書ID
    'document_id': [
        '//hl7:ClinicalDocument/hl7:id[@extension]',
        'attribute',
        'fixed',
        'extension',
        '0123456789.20201020302030'],              
    # 作成日時
    # AuthorTime
    'document_date': [
        '//hl7:ClinicalDocument/hl7:effectiveTime[@value] | //hl7:author/hl7:time | //hl7:effectiveTime/hl7:low | //hl7:effectiveTime/hl7:high',
        'attribute',
        'fixed',
        'value',
        '202403010900'],        
    # 生年月日 標準仕様
    'birthdate': [
        '//hl7:birthTime[@value]',
        'attribute',
        'fixed',
        'value',
        '19700701'],        
    # 生年月日 text仕様（バグ対策）
    'birthdateText': [
        '//hl7:birthTime',
        'text',
        'fixed',
        '',
        '19700701'],         # 医療機関名
    'organizationName': [
        '//hl7:providerOrganization/hl7:name | //hl7:representedCustodianOrganization/hl7:name',
        'text',
        'fixed',
        '',
        '医療提供機関名ダミー'],      
    # 特定のObservationデータ
    # <code codeSystem="2.16.840.1.113883.6.1" codeSystemName="LOINC" code="80989-7" displayName="施行日" />
    #  <value  xsi:type="TS"  value="20200326" />
    # 施行日
    'observationValue_DateofProcedure': [
        '//hl7:observation/hl7:code[@codeSystem="2.16.840.1.113883.6.1" and @code="80989-7"]/../hl7:value',
        'attribute',
        'fixed',
        'value',
        '202403010900'],      
    # 術者等医師名  
    'observationValue_DateofProcedure': [
        '//hl7:observation/hl7:code[@codeSystem="2.16.840.1.113883.6.1" and (@code="52526-1" or @code="78977-6" or @code="78928-9")]/../hl7:value',
        'attribute',
        'incremental',
        'value',
        'ダミー医療者'],
    #   参照先ファイル情報 
    'reference_information': [
        '//hl7:reference',
        'attribute',
        'fixed',
        'value',
        '202403010900.dummy.mwf']             
}

###---  プログラム本体 ---###
def replace_personal_info(xml_path, output_path):
    # XMLファイルの読み込み
    tree = etree.parse(xml_path)
    root = tree.getroot()

    # 名前空間の定義 (HL7 CDAで使用される名前空間を追加)
    namespaces = {'hl7': 'urn:hl7-org:v3', 'xsi': 'http://www.w3.org/2001/XMLSchema-instance'}

    # 実施年月日の置換
    #        for effectiveTime in root.xpath('//hl7:ClinicalDocument/hl7:effectiveTime', #            effectiveTime.set('value', dummy_data['dummy_effectiveTime'])
    pnames = []
    oid = ""
    for key in dummy_data.keys():
        counter = 0
        replace_string0 = dummy_data[key][4]
        replace_string = replace_string0
        org_value = ""
        for element in root.xpath(dummy_data[key][0], namespaces=namespaces):
            if(dummy_data[key][2] == 'incremental'):
                counter = counter +1
                replace_string = replace_string0 + str(counter)
            if( dummy_data[key][1] == 'text'):
                print( key, element.text , "->",replace_string )
                element.text = replace_string
                if( key == 'birthdateText'):
                    element.text = ''
                    element.attrib['value'] =  replace_string
            elif (dummy_data[key][1] == 'attribute'):
                if(key == 'patient_OID_root'):
                    oid = element.get('root')
                    print('patient_OID_root ',oid)
                    if( len(oid) > 12):
                        if oid[-12] == '.':
                            oid = element.get('root')[-11:]
                            print(oid)
                    else:
                        oid = ""
                org_value = element.get(dummy_data[key][3])
                print( key, org_value , "->",replace_string )
                element.set(dummy_data[key][3],replace_string)
                if(key == 'observationValue_DateofProcedure' ):
                    pnames.append([org_value,replace_string])
        # td要素に出現する医療者名をダミーに置き換える   
        for pname in pnames:
            for target in root.xpath('//hl7:td[contains(text(),"'+pname[0]+'")]',namespaces=namespaces):
                print(target.text)
                target.text = pname[1]
    # codeSystem属性に出現する医療機関コード11桁（変数oidに格納された）を10111234567　に置き換える
    for element in root.xpath('//*[substring(@codeSystem, string-length(@codeSystem)-10,11) = "' + oid + '"]', namespaces=namespaces):
        org_oid = element.get('codeSystem')
        new_oid = org_oid
        if( len(org_oid) > 12):
            if org_oid[-12] == '.' and len(oid) == 11:    
                stem_oid = org_oid[0:-11]
                new_oid = stem_oid + "10111234567"
        print(org_oid, "  " , new_oid)
        element.set('codeSystem',new_oid)


    # 置換後のXMLデータを保存
    tree.write(output_path, pretty_print=True, xml_declaration=True, encoding='UTF-8')

# 使用例
#replace_personal_info('CDA_20240318091202773.xml', 'modified_cda.xml')
#replace_personal_info('ecgTest.xml', 'ecgTestmodified.xml')

# ファイルの読み込み、匿名化後のデータ出力
# Usage
if len(sys.argv) != 3:
    print('Usage: CDAファイル（SEAMATを想定）の匿名化を行います。python3 CDApseudomizer.py 元のファイル　出力先ファイル')
    sys.exit(1)
replace_personal_info(sys.argv[1], sys.argv[2])
