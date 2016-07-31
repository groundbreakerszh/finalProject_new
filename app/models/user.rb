class User < ApplicationRecord


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :soft_skill
  has_one :hard_skill

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
