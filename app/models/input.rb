class Input < ApplicationRecord
  belongs_to :lesson
  has_many :user_inputs
end
