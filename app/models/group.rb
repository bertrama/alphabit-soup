class Group < ApplicationRecord
  belongs_to :collection
  has_and_belongs_to_many :samples
end
