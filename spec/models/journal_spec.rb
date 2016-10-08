require 'rails_helper'

describe Journal do

  example "csv_import" do
    filename = "./spec/models/data/担当者別店販売上明細表 2016年 3月度.CSV"
    expect {Journal.csv_import(filename)}.to change{
      [Journal.count, Item.count, Person.count] }.from(
      [0, 0, 0]).to(
      [47, 28, 25])
    pp Item.all
  end


end
