class User < ApplicationRecord
  has_one :info, dependent: :destroy
  accepts_nested_attributes_for :info, allow_destroy: true
end
