class User < ApplicationRecord
  # Include default devise modules. Others available are:
  has_many :books, through: :lists
  has_many :lists
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
