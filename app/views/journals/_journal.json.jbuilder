json.extract! journal, :id, :checkin_at, :karte_no, :quantity, :item_id, :created_at, :updated_at
json.url journal_url(journal, format: :json)