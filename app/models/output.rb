class Output < ApplicationRecord
  belongs_to :lesson
  has_many :user_outputs
end


