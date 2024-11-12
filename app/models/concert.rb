class Concert < ApplicationRecord
  validates_presence_of :title
  belongs_to :group
  has_many :pieces


end
