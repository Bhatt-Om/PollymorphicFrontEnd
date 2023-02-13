class User < ApplicationRecord
   has_many :addresses
   # has_one :current_address ,-> { where(addressable_type: :current_address) }, as: :addressable, class_name: "Address"
   # has_one :work_address ,-> { where(addressable_type: :work_address) }, as: :addressable, class_name: "Address"
   # has_one :home_address ,-> { where(addressable_type: :home_address) }, as: :addressable, class_name: "Address"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
