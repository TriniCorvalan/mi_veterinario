class Client < ApplicationRecord 
    validates :name, presence: true
    has_many :pets

    def pet_count
        self.pets.count
    end
end
