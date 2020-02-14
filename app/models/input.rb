class Input < ApplicationRecord
  has_many :user_inputs
  has_many :user_outputs
  has_many :users, through: :user_inputs
  has_many :users, through: :user_outputs
  belongs_to :all_input
end
