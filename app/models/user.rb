class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_inputs
  has_many :inputs, through: :user_inputs
  has_many :user_outputs
  has_many :outputs, through: :user_outputs
  validates :name, presence: true, uniqueness: true  
  validates :slack, presence: true
  validates :period, presence: true, 
            # format: { with: /\d/, message: "periodは半角数字です" },
            length: { minimum: 2 }
# 期を二文字以上、半角数字、のみ

end
