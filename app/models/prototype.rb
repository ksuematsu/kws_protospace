class Prototype < ActiveRecord::Base
  acts_as_taggable

  has_one :image
  accepts_nested_attributes_for :image

  has_many   :comments
  belongs_to :user

  validates :title, :catch_copy, :concept, presence: true
end
