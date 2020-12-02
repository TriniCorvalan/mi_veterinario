class Client < ApplicationRecord
    has_many :pets

    def pet_count
    end

    def pet_list
        @pets.each do |pet|
            pet.name
            pet.max_weight
            pet.max_height
        end
    end
end
