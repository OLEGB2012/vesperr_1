class Setting < ApplicationRecord
  has_many  :sections, dependent: :destroy
end
