### SEAMATフォーマットをFHIRに変換するためのFHIR実装ガイド
 <span style="color: red; font-size: 120%;"><<注意：このIGは開発中のバージョンです。>></span>
  <span style="color: black; font-size: 120%;"><<本実装ガイドは、内閣府SIP第3期「統合型ヘルスケアシステムの構築」サブテーマD1の研究開発のひとつとして作成されています。>></span>
<br>

#### 本実装ガイド(IG)の目的
本実装ガイドは、SEAMATに準拠したデータフォーマットとフォルダ構成でSS-MIX2拡張ストレージに出力された心電図検査レポートのCDA文書を、FHIRドキュメントに変換する際の各種制約を記述する。

本実装ガイドは、FHIR R4.0.1に従い、JP-Core V1.1.2からの派生プロファイルの実装ガイドとして作成されている。従って、本実装ガイドに記述されていないことについては、JP-Core V1.1.2を参照していただきたい。

#### 想定する運用形態
本実装ガイドで想定する運用形態は、以下の通りである。
 - 医療機関において患者に対して心電図検査を実施し、心電図データを取得してファイリングする
 - 心電図データに対応したファイリングシステムや生理検査部門システム等で、取得した心電図データから心電図検査レポートを生成し、CDA文書に変換してSS-MIX2拡張ストレージに出力する
 - ファサード型のFHIRサーバーやFHIR変換プログラムで、SS-MIX2拡張ストレージからCDA文書を取り出してFHIRドキュメントに変換し、FHIRのRESTful APIを利用してFHIRクライアントに返したり、FHIRリポジトリに登録したりして利用する

#### 参照する仕様等
本実装ガイドは、以下の仕様等を参照して作成されている。
 - JCSデータ出力標準フォーマットガイドライン SEAMAT: Standard Export datA forMAT ～技術文書～ ver.1.1  (一般社団法人 日本循環器学会)<br>[https://www.j-circ.or.jp/itdata/guideline_v11.pdf](https://www.j-circ.or.jp/itdata/guideline_v11.pdf)
 - JAHIS 生理機能検査レポート構造化記述規約 Ver.1.0 (一般社団法人 日本保健医療福祉情報システム工業会)<br>[https://www.jahis.jp/files/user/04_JAHIS standard/15-004_JAHIS生理機能検査レポート構造化記述規約Ver.1.0.pdf](https://www.jahis.jp/files/user/04_JAHIS standard/15-004_JAHIS生理機能検査レポート構造化記述規約Ver.1.0.pdf)
 - JAHIS 心臓カテーテル検査レポート構造化記述規約 Ver.1.0 (一般社団法人 日本保健医療福祉情報システム工業会)<br>[https://www.jahis.jp/files/user/04_JAHIS standard/16-001_JAHIS心臓カテーテル検査レポート構造化記述規約Ver.1.0.pdf](https://www.jahis.jp/files/user/04_JAHIS standard/16-001_JAHIS心臓カテーテル検査レポート構造化記述規約Ver.1.0.pdf)
 - JAHIS 診療文書構造化記述規約共通編 Ver.2.0 (一般社団法人 日本保健医療福祉情報システム工業会) <br>[https://www.jahis.jp/files/user/04_JAHIS standard/20-002_JAHIS診療文書構造化記述規約共通編Ver.2.0.pdf](https://www.jahis.jp/files/user/04_JAHIS standard/20-002_JAHIS診療文書構造化記述規約共通編Ver.2.0.pdf)
 - SS-MIX2 拡張ストレージ 構成の説明と構築ガイドライン Ver.1.2h (一般社団法人 日本医療情報学会)<br>[https://www.jami.jp/wp-content/uploads/2023/11/SS-MIX2_kakuchoStrgGuidelinesVer.1.2h.pdf](https://www.jami.jp/wp-content/uploads/2023/11/SS-MIX2_kakuchoStrgGuidelinesVer.1.2h.pdf)
 - HL7 FHIR JP Core IG V1.1.2 (一般社団法人 日本医療情報学会)<br>[https://jpfhir.jp/fhir/core/1.1.2/index.html](https://jpfhir.jp/fhir/core/1.1.2/index.html)
 - HL7 FHIR R4（本仕様書ではFHIR基底仕様という。）<br>[http://hl7.org/fhir/R4/index.html](http://hl7.org/fhir/R4/index.html)　

### 文書データの表現形式
#### ファイル形式
ファイル形式は、JSON形式（JavaScriptObjectNotation：RFC8259、IETFSTD90、ECMA-4042ndedition）とする。 ファイル名を有するファイルを作成する場合には、特に送受信施設間で別の取り決めがない限り、.jsonの拡張子を末尾に付与するものとする。 

#### 文字集合 
文字集合はUnicode文字セットとする。これはISO/IEC10646：2017（JIS X0221国際符号化文字集合）と同一である。 

#### 符号化形式 
文字符号化形式は、UTF-8（ISO/IEC10646　UCSTransformationFormat8）とする。ネットワーク上で直接データを送受信することを想定し、バイト順マーク（BOM：byteordermark：UTF-8では0xEF0xBB0xBF）を先頭に付与しないものとする。

#### 設計上のトピック

##### 各リソースのプロファイルのURLの命名規則を下記とする
本実装ガイドでは、下記のような命名規則により各リソースのプロファイルURLを生成することとする。

    http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_<リソース名>_SEAMAT_<用途>（SEAMAT共通）

##### Bundle.identifierにSS-MIX2拡張ストレージのコンテンツフォルダ名を持たせる
SS-MIX2では、拡張ストレージのコンテンツフォルダ名は、以下のような書式で記載することが求められている。

  「<患者ID>_<診療日>_<データ種別>_<特定キー>_<発生日時>_<診療科コード>_<コンディションフラグ>」

SEAMATでは、これらの要素に、以下のような項目を組み合わせて指定することが決められている。

 - <患者ID> : 心エコー検査レポートの対象患者の該当医療機関におけるID
 - <診療日> : 心エコー検査レポートの対象となった心エコー検査の検査日（<検査日>）
 - <データ種別> : 心エコー検査レポートのデータ種別情報を「<データ種別コード><レポート/データフラグ>」形式で指定する。（例：LJCS-100D）
   - <データ種別コード> : 診療情報を大きく分類するためのコード
   - <レポート/データフラグ> : 検査レポート、検査データを区別するためのフラグ
 - <特定キー> : 心エコー検査レポートの対象検査の各種ID情報を「<ファイル作成日時>.<データ管理番号>.<オーダ番号>.<部門管理番号>」形式で指定する。
   - <ファイル作成日時> : 検査レポートの場合は検査レポート作成日時。検査データの場合はモダリティでの測定日時相当の日時
   - <データ管理番号> : データやレポートを識別する同一部門管理番号内でユニークな値
   - <オーダ番号> : 電子カルテが発番する、施設内でユニークなオーダ単位の値
   - <部門管理番号> : 検査部門が発番する検査毎にユニークな値

本実装ガイドでは、Bundle.identifier要素に上記のコンテンツフォルダ名を持たせるとともに、その構成要素である<検査日><データ種別コード><レポート/データフラグ><ファイル作成日時><データ管理番号><オーダ番号><部門管理番号>の計7項目をSEAMATのキー情報と呼んで、次節で述べるように個別にマッピングする。

##### SS-MIX2拡張ストレージのコンテンツフォルダ名からSEAMATのキー情報を抽出して、Procedureリソースに個別にマッピングする
本実装ガイドでは、SEAMATのキー情報のうち、<検査日><データ種別コード><レポート/データフラグ><データ管理番号><オーダ番号><部門管理番号>の6項目をProcedureリソースを使用して個別にマッピングする。マッピング先の要素は以下の通り。
  - <検査日> : performedDateTime要素
  - <データ種別コード><レポート/データフラグ> : category要素
  - <データ管理番号> : identifier要素
  - <オーダ番号> : identifier要素
  - <部門管理番号> : identifier要素

### SEAMATのデータタイプごとの記述仕様
#### 心電図検査レポートの記述仕様
心電図検査レポートについては、[こちらのページ](index-ekg.html)を参照のこと。

#### 心エコー検査レポートの記述仕様
心エコー検査レポートについては、[こちらのページ](index-ucg.html)を参照のこと。

#### 心臓カテーテル検査レポートの記述仕様
心臓カテーテル検査レポートについては、[こちらのページ](index-cath.html)を参照のこと。

### 名前空間、コードシステム、バリューセットと識別子
本実装ガイドで定義された名前空間、コードシステム、バリューセットとその識別子の一覧を次の表で示す。

[＜表27 名前空間一覧＞](namespace.html)

{% include markdown-link-references.md %}
