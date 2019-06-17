class Tirage < ApplicationRecord
  belongs_to :hex_answer
  belongs_to :hex_perspective
  belongs_to :user
end
