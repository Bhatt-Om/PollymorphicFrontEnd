class Address < ApplicationRecord
  # belongs_to :addressable, polymorphic: true
  belongs_to :user
end
