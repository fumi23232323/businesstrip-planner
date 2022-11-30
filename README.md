# アプリケーション名
businesstrip-planner
# アプリケーション概要
出張旅程を出張メンバーとシェアし、アプリ上でコミュニケーションを取ることで円滑に出張の手配を進めることができる。
# URL
# テスト用アカウント
・Basic認証パスワード：admin  
・Basic認証：2222  
・メールアドレス：ichiko@gmail.com  
・パスワード：qwer1234  
# 利用方法
## 出張登録
1.トップページのヘッダーからユーザー新規登録を行う。  
2.新規登録でログインが完了するとユーザーマイページへ移動するので、新規出張ボタンから、出張内容（出張タイトル、出張日程、出張メンバー、事務担当者、画像）を入力の上、登録する  
## 出張旅程を作成
1.ユーザーマイページから、旅程を作成する出張を選ぶ。
2.出張の詳細ページから、新規旅程作成ボタンから、旅程内容（日付、開始時間、終了時間、予定、参考リンク）を入力の上、登録する
## 出張の内容についてコメントする
1.出張詳細ページにあるコメント欄から、出張に関するコメントを入力し、コメントするボタンから送信する。
2.送信されたコメントを見て、出張メンバー同士で情報を共有し、必要に応じて、出張詳細ページにあるto doリストボタンから、to doをリストアップする。
## 出張経費を登録する
1.出張詳細ページにある出張経費リストボタンから、出張経費（費用発生日、立替日、立替費目、立替内容、金額、立替者）入力の上、登録する
# アプリケーションを作成した背景
前職の同僚に課題をヒアリングしたところ、出張手配や精算に時間を費やしているという課題を抱えている事が判明した。課題を分析した結果、「出張の詳細を出張メンバーや事務担当者で共有できるツールが無いため、情報の確認に時間が掛かっている」ということが真因であると仮説を立てた。前職でも同様の課題を抱えていた事から、出張関係者（出張メンバー及び事務担当者）が出張手配からクライアントへの請求書が作成できる情報を共有できるアプリケーションを開発することにした。
# 洗い出した要件
# 実装した機能についての画像やGIFおよびその説明
# 実装予定の機能
今後は、出張詳細ページでコメントが送信されると、メール通知が届く機能を実装中。
# データベース設計
[ER図](/Users/katoufumi/projects/businesstrip-planner/ER.dio)
# 画面遷移図
# 開発環境
・フロントエンド
・インフラ
・テスト
・テキストエディタ
・タスク管理
# ローカルでの動作方法
以下のコマンドを順に実行。
% git clone htt@://github.com/
% cd 
% bundle install
% yarn install
# 工夫したポイント
出張旅程を計画するだけでなく、出張後の精算、請求を踏まえたアプリケーションを作成しました。出張メンバー間でのタスク管理や出張期間中の旅程把握として有効に活用してもらえる他、社内処理が出張者サイドと事務サイドともに負担が軽減される事を目指しました。

＃テーブル設計

＃＃usersテーブル
|Column                 |Type    |Options                |
|-----------------------|--------|-----------------------|
｜personnel_number      ｜integer ｜null:false            ｜
｜department_category_id｜integer ｜null:false            ｜
｜position_category_id  ｜integer ｜null:false            ｜
｜name                  ｜string  ｜null:false            ｜
｜email                 ｜string  ｜null:false,unique:true｜
｜encrypted_password    ｜string  ｜null:false            ｜

＃＃＃Association
-has_many:trips
-has_many:schedules

##tripsテーブル
|Column       |Type        |Options                    |
|------------ |------------|---------------------------|
｜user        ｜references ｜null:false,foreign_key:true｜
｜trip_name   ｜string     ｜null:false                 ｜
｜first_day   ｜date       ｜null:false                 ｜
｜last_day    ｜date       ｜null:false                 ｜
｜member_1_id ｜integer    ｜null:false                 ｜
｜member_2_id ｜integer    ｜null:false                 ｜
｜member_3_id ｜integer    ｜null:false                 ｜
｜member_4_id ｜integer    ｜null:false                 ｜
｜member_5_id ｜integer    ｜null:false                 ｜

＃＃＃Association
-belongs_to:user
-has_many:schedules
-has_one:to_do_list
-has_one:expense

##schedulesテーブル
|Column         |Type       |Options                    |
|---------------|-----------|---------------------------|
｜trip_name     ｜references｜null:false,foreign_key:true｜
｜schedule_date ｜date      ｜null:false                 ｜
｜start_time    ｜date      ｜null:false                 ｜
｜end_time      ｜date      ｜null:false                 ｜
｜plan          ｜text      ｜null:false                 ｜
｜link          ｜text      ｜                           ｜

Association
-belongs_to:trip

##to_do_listsテーブル
|Column|Type    |Options |
|------|------|--------|
｜task ｜text ｜        ｜

Association
-belongs_to:trip

##expensesテーブル
|Column           |Type     |Options    |
|-----------------|---------|-----------|
｜payment_date    ｜date    ｜null:false ｜
｜expense_item_id ｜integer ｜null:false ｜
｜description     ｜string  ｜null:false ｜
｜expense_amount  ｜integer ｜null:false ｜
｜payer_id        ｜integer ｜null:false ｜

Association
-belongs_to:trip

