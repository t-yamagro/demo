require 'spec_helper'

describe StringOps2 do
  string_ops2 = StringOps2.new
  input_string = "To see a World in a Grain of Sand, And a Heaven in a Wild Flower, Hold Infinity in the palm of your hand, And Eternity in an hour.\r\n"

  describe "#len" do
    it "returns length for input_string" do
      expected_length = 132
      expect(string_ops2.len(input_string)).to eq(expected_length)
    end
  end

  describe "#chomp" do
    it "returns input_string without whitespace" do
      expected_string = "To see a World in a Grain of Sand, And a Heaven in a Wild Flower, Hold Infinity in the palm of your hand, And Eternity in an hour."
      expect(string_ops2.chomp(input_string)).to eq(expected_string)
    end
  end

  describe "#prepend" do
    it "returns string1 plus string2" do
      string1 = "sample"
      string2 = "text"
      expected_string = "sampletext"
      expect(string_ops2.prepend(string1, string2)).to eq(expected_string)
    end
  end
end
context "mock response" do
  it "mocks the response from to_upper" do
    mocked_response = "This is a mocked to_upper response."
    mocked_string_ops = double("mocked_string_ops")
    allow(mocked_string_ops).to receive(:to_upper).and_return(mocked_response)
    expect(mocked_string_ops.to_upper("any string")).to eq(mocked_response)
  end
end