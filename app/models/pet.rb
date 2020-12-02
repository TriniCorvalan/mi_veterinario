class Pet < ApplicationRecord

  validates :name, presence: true

  has_many :pet_histories
  belongs_to :client

  def history_count
    self.pet_histories.count
    #TODO-implement
  end

  def avg_weight
    if self.history_count != 0
      self.pet_histories.sum(:weight)/self.history_count
    end
    #TODO-implement
  end

  def avg_height
    if self.history_count != 0
      self.pet_histories.sum(:heigth)/self.history_count
    end
    #TODO-implement
  end

  def max_weight
    
    weight = 0

    self.pet_histories.map do |pet_h|
      if pet_h.weight > weight
        weight = pet_h.weight
      end
    end

    weight
    #TODO-implement
  end

  def max_height

    heigth = 0

    self.pet_histories.map do |pet_h|
      if pet_h.heigth > heigth
        heigth = pet_h.heigth
      end
    end

    heigth
    #TODO-implement
  end


  def to_s 
    name
  end

end
