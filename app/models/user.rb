class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable ,
         :database_authenticatable,
        :authentication_keys => {email: true, username: false}

  has_many :contacts, dependent: :destroy


end
