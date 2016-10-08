class Journal < ApplicationRecord
  belongs_to :item

  def self.csv_import(filename)
    require 'csv'

    open(filename, "rb:Shift_JIS:UTF-8", undef: :replace) do |f|
      CSV.new(f, {headers: true}).each do |row|

        checkin_at  = row[1]
        karte_no    = row[2] || "0000"
        person_name = row[3]
        item_name   = row[4]
        quantity    = row[5]
        unit_price  = row[6]

        unless person = Person.find_by_id(karte_no)
          person = Person.create(name: person_name, karte_no: karte_no)
        end
        unless item = Item.find_by_name(item_name)
          item = Item.create(name: item_name, price: unit_price)
        end
        person.journals.create(checkin_at: Date.strptime(checkin_at, '%Y%m%d'), item: item, quantity: quantity)
      end
    end

  end
end
