require 'rails_helper'

describe Person do
  example "カルテNoが重複する場合は無効" do
    Person.create(karte_no: 777)

    person = Person.new(karte_no: 777)
    person.valid?
    expect(person.errors[:karte_no]).to include("has already been taken")
  end
end
