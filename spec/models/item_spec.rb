require 'rails_helper'

describe Item do
  example "有効なファクトリがあること" do
    expect(build(:item)).to be_valid
  end
end
