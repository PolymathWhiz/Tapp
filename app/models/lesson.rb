class Lesson < ApplicationRecord
  validates_presence_of :title, :category, :url, :user_id
end
