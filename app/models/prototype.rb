class Prototype < ActiveRecord::Base
  has_one :image
  accepts_nested_attributes_for :image

  belongs_to :user

  validates :title, :catch_copy, :concept, presence: true
end
