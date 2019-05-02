class Format < ApplicationRecord
  has_many :creams
  default_scope { order('lower(kind)') }
end
