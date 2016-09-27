class Person < ApplicationRecord
  has_many :journals, primary_key: :karte_no, foreign_key: :karte_no
end
