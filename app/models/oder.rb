class Oder < ApplicationRecord
  belongs_to :member
  has_many :oder_details, dependent: :destroy

end
