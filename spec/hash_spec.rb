require 'spec_helper'

describe 'Hash#length' do

  context "with no items" do
    it "should have a length of 0" do
      my_hash = Hash.new
      expect(my_hash.length).to eq(0)
    end
  end

  context "with items" do
    it "should have a length of greater than 0" do
      my_hash = Hash.new
      my_hash[:example] = "test"
      expect(my_hash.length).to be > (0)
    end
  end

end
