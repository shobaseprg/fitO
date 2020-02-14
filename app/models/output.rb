class Output < ApplicationRecord
  belongs_to :user
  belongs_to :all_output ,optional: true
end
