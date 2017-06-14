require_relative '../counting_sort.rb'

describe CountingSort do
  before(:each) do
    @test_data = [6,9,3,1,5,10,8,7,1,4,2]
  end

  context "empty array" do
    it "should remain an empty array" do
      expect([]).to eq([])
    end
  end

  context "single element array" do
    it "should return element " do
      test = [1]
      expect(CountingSort.sort(test)).to eq(test)
    end
  end  

  context "randomly sorted array" do
    it "should be sorted" do
      test = @test_data.shuffle
      expect(CountingSort.sort(test)).to eq(@test_data.sort)
    end
  end

  context "already sorted array" do
    it "should be sorted" do
      test = @test_data.sort
      expect(CountingSort.sort(test)).to eq(@test_data.sort)
    end
  end  

  context "reverse sorted array" do
    it "should be sorted" do
      test = @test_data.sort.reverse
      expect(CountingSort.sort(test)).to eq(@test_data.sort)
    end
  end
end
