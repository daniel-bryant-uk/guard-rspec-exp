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

  context "experimenting with a doubled list" do

    before do
      @list = double("my_list", :size => 8)
    end

    it "should think it's the correct size" do
      expect(@list.size).to eql (8)
    end
  end

  context "experimenting with a stubbed list" do

    before do
      allow(@list).to receive(:size).and_return(8)
    end

    it "should think it's the correct size" do
      expect(@list.size).to eql (8)
    end
  end

  context "experimenting with a stubbed list (via let)" do

    let(:list) { double("my_list", :size => 8) }

    it "should think it's the correct size" do
      actual = list.size
      expect(actual).to eql (8)
    end
  end
end