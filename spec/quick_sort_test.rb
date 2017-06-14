require_relative '../quick_sort.rb'

describe QuickSort do
  before(:each) do
    @test_data = [6,9,3,1,5,10,8,7,1,4,2]
  end

  context "empty array" do
    it "should remain an empty array" do
      expect(QuickSort.sort([])).to eq([])
    end
  end

  context "single element array" do
    it "should return element " do
      test = [1]
      expect(QuickSort.sort(test)).to eq(test)
    end
  end

  context "randomly sorted array" do
    it "should be sorted" do
      test = @test_data.shuffle
      expect(QuickSort.sort(test)).to eq(@test_data.sort)
    end
  end

  context "already sorted array" do
    it "should be sorted" do
      test = @test_data.sort
      expect(QuickSort.sort(test)).to eq(@test_data.sort)
    end
  end  

  context "reverse sorted array" do
    it "should be sorted" do
      test = @test_data.reverse
      expect(QuickSort.sort(test)).to eq(@test_data.sort)
    end
  end
end
