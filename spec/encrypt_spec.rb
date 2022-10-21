require_relative "../encrypt"

describe "#encrypt" do
  it "should encrypt the message by going back 3 letters in the alphabet" do
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
    expect(actual).to eq(expected)
  end

  it "it return the value back if it's an empty string" do
    actual = encrypt("")
    expected = ""
    expect(actual).to eq(expected)
  end

end
