# README

usersテーブル
| column           |   Type   |          Options           |
| -----------------| ---------|------------------------    |
| nickname         | string   | null:false                 |
| last_name        | string   | null:false                 |
| first_name       | string   | null:false                 |
| last_name_read   | string   | null:false                 |
| first_name_read  | string   | null:false                 |
| age              | integer  | null:false                 |
| gender           | boolean  | null:false, default:false  |
| profile          | text     | null:false                 |

Association
- has_many: managements

managementsテーブル
| column             |   Type    |          Options           |
| -------------------| ----------|------------------------    |
| temperature        | integer   | null:false                 |
| b_pressure_up      | integer   | null:false                 |
| b_pressure_down    | integer   | null:false                 |
| pulse              | integer   | null:false                 |
| weight             | integer   | null:false                 |
| sleep_id           | integer   | null:false                 |
| exercise_content   | text      | null:false                 |

Association 
- belongs_to :user




