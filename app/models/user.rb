class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :items

validates :nickname, presence: true
validates :age, presence: true
validates :gender, presence: true
validates :profile, presence: true
VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
validates :password, format: { with: VALID_PASSWORD_REGEX }
with_options presence: true do
 validates :last_name, format: { with: /\A[ぁ-んァ-ヶー-龥々ー]+\z/, message: 'is invalid. Input full-width characteres.' }
 validates :first_name, format: { with: /\A[ぁ-んァ-ヶー-龥々ー]+\z/, message: 'is invalid. Input full-width characteres.' }
 validates :last_name_read, format: { with: /\A[ァ-ヶー]+\z/, message: 'is invalid. Input full-width katakana characters.' }
 validates :first_name_read, format: { with: /\A[ァ-ヶー]+\z/, message: 'is invalid. Input full-width katakana characters.' }
 end
end
