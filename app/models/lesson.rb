class Lesson < ApplicationRecord
  has_many :inputs
  has_many :outputs
end
