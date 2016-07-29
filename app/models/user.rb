class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :soft_skills
  has_many :hard_skills

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
