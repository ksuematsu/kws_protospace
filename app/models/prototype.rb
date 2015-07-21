class Prototype < ActiveRecord::Base
  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
end
