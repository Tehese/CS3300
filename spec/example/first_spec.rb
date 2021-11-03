require "rails_helper"

#Verifying that Rspec is working correctly by giving it a false answer, and then changing it to the correct
RSpec.describe "The math below is wrong..." do
  it "should equal 42 but we said 43" do
    expect(6 * 7).to eq(42)
  end
end

#Makes sure that when creating a new String that it creates an empty string.
RSpec.describe "hello spec" do
describe String do
    let(:string) { String.new }
    it "should provide an empty string" do
    expect(string).to eq("")
    end
end
end