class Tirage < ApplicationRecord
  belongs_to :user
  belongs_to :hexagramme
  has_many :traits
end
