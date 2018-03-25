class Lesson < ApplicationRecord
  belongs_to :user

  validates_presence_of :title, :category, :url, :description, :user_id
end
