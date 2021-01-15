class Comment < ApplicationRecord
  belongs_to :creator, foreign_key: 'user_id', class_name: 'User'
  belongs_to :commentable, polymorphic: true
end