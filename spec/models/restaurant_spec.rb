require 'rails_helper'

RSpec.describe Restaurant do
  subject(:restaurant) { FactoryGirl.build(:restaurant, name: nil)}
  it {expect(restaurant.valid?).to be_falsey}
end
