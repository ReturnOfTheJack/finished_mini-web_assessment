class Content < ApplicationRecord
  belongs_to :course
  validates :name, :content, presence: true
end