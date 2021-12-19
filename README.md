## Users
|Column|Type|Options|
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| profile            | text |
### Association
- has_many :posts
- has_many :comments
- has_many :groups_users
- has_many :group_rooms
- has_many :messages


## Posts
|Column|Type|Options|
| detail  | text | ----------- |
| image   | active_hash | ----------- |
| user    | references | foreign_key: true |
### Association
- has_many :comments
- belongs_to :user
- has_one :image


## Comments
|Column|Type|Options|
| comment | text | null: false |
| user    | references | foreign_key: true |
| post    | references | foreign_key: true |
### Association
- belongs_to :user
- belongs_to :post


## Groups
|Column|Type|Options|
| group_name | string | null: false |
### Association
- has_many :groups_users
- has_many :group_rooms


## Grouppost
|Column|Type|Options|
| content | text | null: false|
| user    | references | foreign_key: true |
| group   | references | foreign_key: true |
### Association
- belongs_to :user
- belongs_to :group


## Rooms
|Column|Type|Options|
| user    | references | foreign_key: true |
### Association
- has_many :messages


## messages
|Column|Type|Options|
| message | text | null: false |
| user    | references | foreign_key: true |
| room    | references | foreign_key: true |
### Association
- belongs_to :user
- belongs_to :room