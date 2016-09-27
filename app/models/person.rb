class Person < ApplicationRecord
  has_many :journals, primary_key: :karte_no, foreign_key: :karte_no

  validates :karte_no, uniqueness: true

  class << self
    def find_by_id(id)
      self.find_by_karte_no(id)
    end
  end
end
