class Carrier < ApplicationRecord
  default_scope { order('updated_at DESC') }
  has_many :phones
  belongs_to :user
end
