### SEAMATフォーマットをFHIRに変換するためのFHIR実装ガイド
 <span style="color: red; font-size: 120%;"><<注意：このIGは開発中のバージョンです。>></span>
  <span style="color: black; font-size: 120%;"><<本実装ガイドは、内閣府SIP第3期「統合型ヘルスケアシステムの構築」サブテーマD1の研究開発のひとつとして作成されています。>></span>
<br>

#### このImplementationガイド(IG)の目的：

＜ここに目的を記載＞

本実装ガイドは、FHIR R4.0.1に従い、JP-Core V1.1.xからの派生プロファイルの実装ガイドとして作成されている。従って、本IGに記述されていないことについては、JP-Core V1.1.xを参照していただきたい。

#### 想定する運用形態

## 心電図レポート用FHIRドキュメントの概要

<img src="ecgReportStructure.png" width="60%"><br clear="all">

### 心電図レポート用FHIRドキュメントのトピック

#### 各リソースのプロファイルのURLの命名規則を下記とする
  
    http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_<リソース名>_SEAMAT_<用途>（SEAMAT共通）
  
    http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_<リソース名>_EKGReport（心電図固有）

#### Bundle.identifierにSS-MIX2拡張ストレージのコンテンツフォルダ名を持たせる
  
  「<患者ID>_<診療日>_<データ種別>_<特定キー>_<発生日時>_<診療科コード>_<コンディションフラグ>」
  
 - <診療日>=<検査日>
 - <データ種別>=<データ種別コード><レポート/データフラグ>
 - <特定キー>=<ファイル作成日時>.<データ管理番号>.<オーダ番号>.<部門管理番号>

#### SS-MIX2拡張ストレージのコンテンツフォルダ名からSEAMATのキー情報を抽出して、Procedureリソースに個別にマッピングする

#### Observationリソースは、血液型/測定値/解析値用のプロファイルを用意する

#### 外部参照については、FHIRサーバーへの登録のため、外部ファイルの内容をDocumentReferenceないしBinaryリソース内に内包する

## FSHファイルの構成

<img src="fsh_fileList.png" width="60%"><br clear="all">

{% include markdown-link-references.md %}
