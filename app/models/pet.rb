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
    #TODO-implement
  end

  def max_height
    #TODO-implement
  end


  def to_s 
    name
  end

end
