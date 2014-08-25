require 'spec_helper'

describe "Lists" do

  context "list has been initialised" do

    before do
      @list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    end

    it "should be the correct length" do
      expect(@list.size).to eql(10)
    end

    it "should be the correct length (asserted differently)" do
      expect(@list).to have_exactly(10).items
    end

    it "should contain expected element" do
      expect(@list).to include(1)
    end

    it "should sum correctly" do
      sum = 0
      @list.each { |list_el| sum += list_el }
      expect(sum).to eql(55)
    end

    it "should transform correctly" do
      transformed_list = @list.map { |list_el| list_el *2 }

      expect(transformed_list).to include(18, 20)
    end
  end
end