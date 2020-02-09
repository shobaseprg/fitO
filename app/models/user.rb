class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_inputs
  has_many :inputs, through: :user_inputs
  has_many :user_outputs
  has_many :outputs, through: :user_outputs
  # validates :name, presence: true, uniqueness: true


end
