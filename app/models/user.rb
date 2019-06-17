class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   has_many :tweets

   validates :name, presence: true ,  length: { minimum: 2 } ,  length: { maximum: 24 }, format: { with: /\A[a-zA-Z0-9]+\Z/ }
   validates :username, presence: true , uniqueness: true , length: { minimum: 2 } ,  length: { maximum: 24 } , format: { with: /\A[a-zA-Z0-9]+\Z/ }
   validates :email, presence: true , uniqueness: true , format: { with: URI::MailTo::EMAIL_REGEXP } 
   validates :password, presence: true , length: { in: 6..20 } , confirmation: true
   validates :password_confirmation, presence: true


end
