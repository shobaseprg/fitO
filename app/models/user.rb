class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :inputs
  validates :name, presence: true, uniqueness: true  
  validates :slack, presence: true,uniqueness: true  
  validates :period, presence: true, 
            numericality: { only_integer: true ,message: "半角数字です"}
end
