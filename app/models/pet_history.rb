class PetHistory < ApplicationRecord
    validates :weight, :heigth, presence: true
    belongs_to :pet

end
