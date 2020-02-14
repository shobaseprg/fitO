class Input < ApplicationRecord
  belongs_to :lesson ,optional: true
  belongs_to :user
end
