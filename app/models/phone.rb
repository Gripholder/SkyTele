class Phone < ApplicationRecord
  default_scope { order('updated_at DESC') }
  belongs_to :carrier
  belongs_to :user
end
