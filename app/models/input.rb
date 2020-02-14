class Input < ApplicationRecord
  belongs_to :user
  belongs_to :all_input ,optional: true
end
