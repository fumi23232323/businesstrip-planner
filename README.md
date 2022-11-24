＃テーブル設計

＃＃usersテーブル
|Column                 |Type    |Options                |
|-----------------------|--------|-----------------------|
｜personnel number      ｜integer ｜null:false            ｜
｜department_category_id｜integer ｜null:false            ｜
｜position_category_id  ｜integer ｜null:false            ｜
｜last_name             ｜string  ｜null:false            ｜
｜first_name            ｜string  ｜null:false            ｜
｜email                 ｜string  ｜null:false,unique:true｜
｜encrypted_password    ｜string  ｜null:false            ｜

＃＃＃Association
-has_many:trips
-has_many:schedules

##tripsテーブル
|Column         |Type        |Options                    |
|-------------- |------------|---------------------------|
｜user          ｜references ｜null:false,foreign_key:true｜
｜trip_name     ｜string     ｜null:false                 ｜
｜first_day     ｜date       ｜null:false                 ｜
｜last_day      ｜date       ｜null:false                 ｜
｜client_name_id｜integer    ｜null:false                 ｜
｜member_1_id   ｜integer    ｜null:false                 ｜
｜member_2_id   ｜integer    ｜null:false                 ｜
｜member_3_id   ｜integer    ｜null:false                 ｜
｜member_4_id   ｜integer    ｜null:false                 ｜
｜member_5_id   ｜integer    ｜null:false                 ｜

＃＃＃Association
-belongs_to:user
-has_many:schedules
-has_one:to_do_list
-has_one:expense

##schedulesテーブル
|Column         |Type       |Options                    |
|---------------|-----------|---------------------------|
｜trip          ｜references｜null:false,foreign_key:true｜
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


# アプリケーション名
Business trip planner
# アプリケーション概要

# URL

# テスト用アカウント
ログイン機能等を実装した場合は、ログインに必要な情報を記載。またBasic認証等を設けている場合は、そのID/Passも記載すること。
# 利用方法
このアプリケーションの利用方法を記載。説明が長い場合は、箇条書きでリスト化すること。
# アプリケーションを作成した背景
このアプリケーションを通じて、どのような人の、どのような課題を解決しようとしているのかを記載。
# 洗い出した要件
要件定義をまとめたスプレッドシートのリンクを記載。
# 実装した機能についての画像やGIFおよびその説明
実装した機能について、それぞれどのような特徴があるのかを列挙する形で記載。画像はGyazoで、GIFはGyazoGIFで撮影すること。
# 実装予定の機能
洗い出した要件の中から、今後実装予定の機能がある場合は、その機能を記載。
# データベース設計
ER図を添付。
# 画面遷移図
	画面遷移図を添付。
# 開発環境
使用した言語・サービスを記載。
# ローカルでの動作方法
git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記載。
# 工夫したポイント
制作背景・使用技術・開発方法・タスク管理など、企業へＰＲしたい事柄を記載。

