＃テーブル設計

＃＃usersテーブル
|Column                 |Type    |Options                |
|-----------------------|--------|-----------------------|
｜personnel_number      ｜integer ｜null:false            ｜
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
|Column       |Type        |Options                    |
|------------ |------------|---------------------------|
｜user        ｜references ｜null:false,foreign_key:true｜
｜item_name   ｜string     ｜null:false                 ｜
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
